#!/usr/bin/env python3

from enum import IntEnum

import html

import skoolkit.graphics
from skoolkit.graphics import Frame, Udg
from skoolkit.skoolhtml import HtmlWriter

class WallyHtmlWriter(HtmlWriter):

    class LogicState(IntEnum):
        PATTERN = 0xF6
        ACTION = 0xF7
        END = 0xFF

    class GraphicsState(IntEnum):
        REPEAT_ROWS = 0xF0
        SPACE = 0xF1
        REPEAT_COL_PAIRS = 0xF2
        CHAIN = 0xF3
        NEW_ADDR = 0xFB
        REPEAT_COLS = 0xFD
        ATTR = 0xFE
        END = 0xFF

    class Pattern(IntEnum):
        AT_OBJ = 0
        HAS = 1
        IS_SET = 2
        IS_OBJ = 3
        AT = 4
        AM = 5
        NOT_HAS = 6
        NOT_OBJ = 7

    poneargs = [ Pattern.AT_OBJ, Pattern.HAS, Pattern.IS_SET, Pattern.AM, Pattern.NOT_HAS ]
    ptwoargs = [ Pattern.AT, Pattern.IS_OBJ, Pattern.NOT_OBJ ]

    pobjargs = [ Pattern.HAS, Pattern.NOT_HAS ]
    pobjtargs = [ Pattern.AT_OBJ, Pattern.IS_OBJ, Pattern.NOT_OBJ ]
    pflagargs = [ Pattern.IS_SET ]
    pchrargs = [ Pattern.AM ]

    class Action(IntEnum):
        SWAP = 0
        SWAP_FOR = 1
        SET = 2
        RESET = 3
        SET2 = 4
        EARN = 5
        WALL = 6
        SPACE = 7
        SAFE = 8
        CHASE = 9
        OUT = 10

    aoneargs = [ Action.SWAP_FOR, Action.SET, Action.RESET, Action.EARN ]
    atwoargs = [ Action.SET2 ]
    athreeargs = [ Action.WALL ]
    aobjargs = [ Action.SWAP_FOR ]
    aflagargs = [ Action.SET, Action.RESET, Action.SET2 ]
    amoneyargs = [ Action.EARN ]

    class Character(IntEnum):
        WALLY = 1
        WILMA = 2
        TOM = 4
        DICK = 8
        HARRY = 16

    class Flag(IntEnum):
        BOTTLE_FULL = 0
        FUSE_REWIRED = 1
        PARCEL_STAMPED = 2
        HOOK_WORKING = 3
        BUCKET_FULL = 4
        PIPE_PATCHED = 5
        BATTERY_CHARGED = 6
        OIL_CAN_FULL = 7
        FOUNTAIN_WORKING = 8
        WALL_BUILT = 9
        GAS_WORKING = 10
        ELECTRICITY_WORKING = 11
        TROLLEY_WORKING = 12
        ASTEROIDS_DONE = 13

    def debug( self, addr ):
        print( hex( addr ), hex( self.snapshot[ addr ] ) )

    def print_pattern( self, pattern, n, op ):
        if( pattern in self.pobjargs and n == 1 ):
            return self.print_object( op )
        if( pattern in self.pchrargs and n == 1 ):
            return WallyHtmlWriter.Character( op ).name
        if( pattern in self.pflagargs and n == 1 ):
            return WallyHtmlWriter.Flag( op ).name
        if( pattern in self.pobjtargs and n == 2 ):
            return self.print_object( op )
        else:
            return str( op )
        
    def print_action( self, action, n, op ) :
        if( action in self.aobjargs and n == 1 ):
            return self.print_object( op )
        if( action in self.aflagargs and n == 1 ):
            return WallyHtmlWriter.Flag( op ).name
        if( action in self.amoneyargs and n == 1 ):
            return self.print_money( op )
        else:
            return str( op )

    def print_object( self, obj_id ):
        text = ''
        ptr =  0xE728 + 2 * obj_id
        addr = + self.snapshot[ ptr ] + self.snapshot[ ptr + 1 ] * 0x100

        next = self.snapshot[ addr ]
        while next != WallyHtmlWriter.LogicState.END:
            if( next > 0x80 ):
                text += ' '
                addr = addr + 1
            else:
                text += chr( next )
            addr = addr + 1
            next = self.snapshot[ addr ]
        return text
    
    def print_money( self, id ):
        addr = 0xEC5C + 3 * id
        money = self.snapshot[ addr + 2 ] * 100 + int( ( self.snapshot[ addr + 1 ] / 16 ) * 10 )
        return '£' + str( money )

    def print_logic( self, cwd, addr ):

        text = ''

        first_pattern = True

        current_state = WallyHtmlWriter.LogicState.PATTERN

        next = self.snapshot[ addr ]
        while next != WallyHtmlWriter.LogicState.END:

            if( next == WallyHtmlWriter.LogicState.PATTERN ):
                text = text + 'END IF<br/>'
                first_pattern = True
                current_state = WallyHtmlWriter.LogicState.PATTERN
                addr = addr + 1

            if( next == WallyHtmlWriter.LogicState.ACTION ) :
                text = text + '</br> THEN</br>'
                current_state = WallyHtmlWriter.LogicState.ACTION
                addr = addr + 1

            if( next != WallyHtmlWriter.LogicState.PATTERN and next != WallyHtmlWriter.LogicState.ACTION and next != WallyHtmlWriter.LogicState.END ):
                if( current_state == WallyHtmlWriter.LogicState.PATTERN ):
                    if( first_pattern ):
                        text = text + '<br/>IF '
                        first_pattern = False
                    else:
                        text = text + '</br> AND '

                    pattern = WallyHtmlWriter.Pattern( self.snapshot[ addr ] )
                    addr = addr + 1

                    text = text + pattern.name + '( '

                    op = self.snapshot[ addr ]
                    addr = addr + 1

                    text = text + self.print_pattern( pattern, 1, op )

                    if( pattern in self.ptwoargs ):

                        op2 = self.snapshot[ addr ]
                        addr = addr + 1

                        text = text + ', ' + self.print_pattern( pattern, 2, op2 )   

                    text = text + ' ) '

                if( current_state == WallyHtmlWriter.LogicState.ACTION ):
                    action = WallyHtmlWriter.Action( self.snapshot[ addr ] )
                    addr = addr + 1

                    text = text + '&nbsp;&nbsp;' + action.name

                    if( action in self.aoneargs or action in self.atwoargs or action in self.athreeargs ):
                        text = text + '( '

                        op = self.snapshot[ addr ]
                        addr = addr + 1

                        text = text + self.print_action( action, 1, op )

                        if( action in self.atwoargs or action in self.athreeargs ):
                            op2 = self.snapshot[ addr ]
                            addr = addr + 1

                            text = text + ', ' + self.print_action( action, 2, op2 )

                            if( action in self.athreeargs ) :
                                op3 = self.snapshot[ addr ]
                                addr = addr + 1

                                text = text + ', ' + self.print_action( action, 3, op3 )

                        text = text + ' )'
                    text = text + '<br/>'
                    
            next = self.snapshot[ addr ]

        return self.expand( text, cwd )

    def print_room_stats( self, cwd, addr ):

        text = ''
        for id, x, y in self.enum_room_data( addr, True ):
            ptr = self.get_block_ptr_from_id( id )
            text += '<br/>{' + f'#R${ptr:x}|{id}' + '}' + ' ' + str(x) + ',' + str(y)
        return self.expand( text, cwd )


    def print_room_data( self, cwd, addr, fName ):

        bg = self.make_background()

        for id, x, y in self.enum_room_data( addr, False ):
            self.make_block_data( bg, self.get_block_ptr_from_id( id ), 0, x, y, 0 )
        
        bgf = self.make_background()
        for id, x, y in self.enum_room_data( addr, True ):
            self.make_block_data( bgf, self.get_block_ptr_from_id( id ), 0, x, y, 0 )

        frames = [ Frame( bg, scale=2, delay=100 ), Frame( bgf, scale=2, delay=100 ) ]
        return self.handle_image( frames, fName, cwd )

    def get_block_ptr_from_id( self, id ):
        offset = 0xBD86 + 2 * id
        ptr = self.snapshot[ offset ] + 0x100 * self.snapshot[ offset + 1 ]
        return ptr

    def enum_room_data( self, addr, flags ):
        d = self.snapshot[ addr ]
        e = self.snapshot[ addr + 1 ]
        addr +=2

        while( d != 0x7F ):
            id = d & 0x7F

            if id == 0x7E:
                if not flags:
                    # Skip over flag-dependent graphics on this run
                    addr += 2
            else:

                x = ( e & 0xF8 ) >> 3
                y = ( ( e << 1 ) + ( d >> 7 ) & 0xF ) + 5

                yield id, x, y

            d = self.snapshot[ addr ]
            e = self.snapshot[ addr + 1 ]
            addr +=2

    def print_block_data( self, cwd, addr, fName ):
        
        bg = self.make_background()

        base = 0
        attr = 0
        x = 16
        y = 12

        self.make_block_data( bg, addr, base, x, y, attr )

        frame = Frame( bg, 2 )
        return self.handle_image( frame, fName, cwd )
    
    def make_block_data( self, bg, addr, base, x, y, attr ):

        next = self.snapshot[ addr ]
        addr += 1
        while ( next != WallyHtmlWriter.GraphicsState.END ):

            if ( next >= 0xA8 and next <= 0xE8 ):
                x += ( next - 0xC8 )
                offset = self.snapshot[ addr ]
                addr += 1
                if( offset < 0x80 ):
                    y += offset
                else:
                    y -= (0x100 - offset )

            if( next == WallyHtmlWriter.GraphicsState.CHAIN ):
                ptr = self.snapshot[ addr ] + 0x100 * self.snapshot[ addr + 1 ]
                addr += 2
                return self.make_block_data( bg, ptr, base, x, y, attr )

            if( next == WallyHtmlWriter.GraphicsState.NEW_ADDR ):
                base = self.snapshot[ addr ] + 0x100 * self.snapshot[ addr + 1 ]
                addr += 2

            if ( next == WallyHtmlWriter.GraphicsState.SPACE ):
                x += 1

            if ( next == WallyHtmlWriter.GraphicsState.REPEAT_ROWS ):
                rows = self.snapshot[ addr ]
                addr += 1
                id = self.snapshot[ addr ]
                addr += 1
                for i in range( 0, rows ):
                    self.print_udg( bg, base, id, x, y, attr )
                    y += 1

            if( next == WallyHtmlWriter.GraphicsState.REPEAT_COLS ):
                cols = self.snapshot[ addr ]
                addr += 1
                id = self.snapshot[ addr ]
                addr += 1
                for i in range( 0, cols ):
                    self.print_udg( bg, base, id, x, y, attr )
                    x += 1

            if( next == WallyHtmlWriter.GraphicsState.REPEAT_COL_PAIRS ):
                cols = self.snapshot[ addr ]
                addr += 1
                id = self.snapshot[ addr ]
                addr += 1
                id2 = self.snapshot[ addr ]
                addr += 1
                for i in range( 0, cols ):
                    self.print_udg( bg, base, id, x, y, attr )
                    x += 1
                    self.print_udg( bg, base, id2, x, y, attr )
                    x += 1

            if( next == WallyHtmlWriter.GraphicsState.ATTR ):
                attr = self.snapshot[ addr ]
                addr += 1

            if( next < 0xA8 ):
                id = next
                self.print_udg( bg, base, next, x, y, attr )
                x += 1

            next = self.snapshot[ addr ]
            addr += 1

    def make_background( self ):
        udgs = []
        for y in range( 0, 24 ):
            nextUdgs = []
            for x in range( 0, 32 ):
                nextUdgs.append( Udg( 0, [ 0, 0, 0, 0, 0, 0, 0, 0]))
            udgs.append( nextUdgs )
        return udgs

    def print_udg( self, bg, addr, id, x, y, attr ):

        ptr = addr + ( id * 8 )
        udgs = [ [ Udg( attr, self.snapshot[ ptr : ptr + 8 ] ) ] ]
        skoolkit.graphics.overlay_udgs( bg, udgs, x * 8, y * 8, 0, lambda bg, fg : fg, lambda bg, fg, mk : fg )

    def print_next_rooms( self, cwd, addr ):

        text = ''

        id = self.snapshot[ addr ]
        while (id != 0xff ):
            fRoom = self.snapshot[ addr ]
            fFrom = self.snapshot[ addr + 1 ]
            fTo = self.snapshot[ addr + 2 ]
            
            fx, fy = self.get_coords( fFrom )
            tx, ty = self.get_coords( fTo )

            nRoom = self.get_room_name( fRoom )

            if( fx == 0 ):
                text += 'LEFT'
            elif( fx == 0xF0 ):
                text += 'RIGHT'
            else:
                text += 'IN'
            text += ' at ' + str( fx ) + ',' + str( fy )
            text += ' to ' + nRoom + ' at ' + str( tx ) + ',' + str( ty ) + '<br/>'
            addr += 3
            id = self.snapshot[ addr ]

        return self.expand( text, cwd )
    
    def get_room_name( self, i ):
        room_names = [ 0x7F1F, 0x7F2F, 0x7F3C, 0x7F4C, 0x7F5A, 0x7F6B, 0x7F74, 0x7F80,
                0x7F8C, 0x7F98, 0x7FA4, 0x7FB2, 0x7FBE, 0x7FC9, 0x7FD6, 0x7FE1,
                0x7FE9, 0x7FF3, 0x8002, 0x800D, 0x801C, 0x8028, 0x8033, 0x803C,	
                0x804A, 0x8056, 0x8063, 0x806E, 0x8076, 0x8080, 0x808C, 0x8096, 0x80A0 ]
        text = ''
        addr = room_names[ i ]
        ch = self.snapshot[ addr ]
        while( ch != 0xff ):
            text += chr(ch)
            addr += 1
            ch = self.snapshot[ addr ]
        return text

    def get_coords( self, i ):
        addr = 0xaf10 + ( 2 * i )
        x = self.snapshot[ addr ]
        y = self.snapshot[ addr + 1]
        return x, y

    def print_platforms( self, cwd, addr, rAddr, fName ):

        bg = self.make_background()
        
        for id, x, y in self.enum_room_data( rAddr, True ):
            self.make_block_data( bg, self.get_block_ptr_from_id( id ), 0, x, y, 0 )

        ch = self.snapshot[ addr ]
        while ch != 0xFF:
            self.print_platform( bg, ch, self.snapshot[ addr + 1 ], self.snapshot[ addr + 2 ])
            addr += 3
            ch = self.snapshot[ addr ]
        frame = Frame( bg, 2 )
        return self.handle_image( frame, fName, cwd )

    def print_platform( self, bg, y, x1, x2 ):
            udg = Udg( 0, [ 0, 0, 0, 0, 0, 0, 0, 0 ])
            udgs = []
            for i in range( x1, x2 ):
                udgs.append( udg )
            skoolkit.graphics.overlay_udgs( bg, [ udgs ], x1 * 8, y, 0, lambda bg, fg : bg + 0x80 )

    def print_block_ctl( self, cwd, addr ):
        for i in range( 0, 118 ):
            addr = 0xBD86 + 2 * i
            ptr = self.snapshot[ addr ] + 0x100 * self.snapshot[ addr + 1]
            print( 'b $' + f'{ptr:x}'.upper() + ' Room block data ' + f'{i:x}'.upper() )
            print( 'D $' + f'{ptr:x}'.upper() + ' #CALL:print_block_data(#PC,block_data_' + f'{i:x}'.upper() + ')' )

    def print_player( self, cwd, addr, fName ):
        return self.print_player_or_mask( cwd, addr, fName, 2 )
    
    def print_mask( self, cwd, addr, fName ):
        return self.print_player_or_mask( cwd, addr, fName, 0 )

    def get_player_attr( self, addr ):
        id = int( ( addr - 0x9438 ) / 0x400 )
        return self.snapshot[ 0xBC85 + id ]

    def print_player_or_mask( self, cwd, addr, fName, offset ):
        attr = self.get_player_attr( addr )
        frames = []
        for f in range( 0, 8 ):
            ptr = addr + ( 0x80 * f )
            udgs = []
            for y in range( 0, 4 ):
                udgline = []
                for x in range( offset, offset + 2 ):
                    data = []
                    sptr = ptr +  y * 32  + x
                    for i in range( 0, 8 ):
                        cptr = sptr + 4 * i
                        data.append( self.snapshot[ cptr ] )
                    udg = Udg( attr, data )
                    udgline.append( udg )
                udgs.append( udgline )
            frame = Frame( udgs, 2 )
            frames.append( frame )
        return self.handle_image( frames, fName, cwd )
    
    def print_next_room_table( self, cwd, addr ):
        text = ''
        id = self.snapshot[ addr ]
        while id != 0xff:       
            text += self.get_room_name( id ) + '<br/>'
            addr += 1
            id = self.snapshot[ addr ]
        return self.expand( text, cwd )