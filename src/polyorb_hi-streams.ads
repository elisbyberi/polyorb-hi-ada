------------------------------------------------------------------------------
--                                                                          --
--                          PolyORB HI COMPONENTS                           --
--                                                                          --
--                   P O L Y O R B _ H I . S T R E A M S                    --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--    Copyright (C) 2008-2009 Telecom ParisTech, 2010-2012 ESA & ISAE.      --
--                                                                          --
-- PolyORB HI is free software; you  can  redistribute  it and/or modify it --
-- under terms of the GNU General Public License as published by the Free   --
-- Software Foundation; either version 2, or (at your option) any later.    --
-- PolyORB HI is distributed  in the hope that it will be useful, but       --
-- WITHOUT ANY WARRANTY;  without even the implied warranty of              --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details. You should have received  a copy of the --
-- GNU General Public  License  distributed with PolyORB HI; see file       --
-- COPYING. If not, write  to the Free  Software Foundation, 51 Franklin    --
-- Street, Fifth Floor, Boston, MA 02111-1301, USA.                         --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
--              PolyORB-HI/Ada is maintained by the TASTE project           --
--                      (taste-users@lists.tuxfamily.org)                   --
--                                                                          --
------------------------------------------------------------------------------

--  This package is a reduced version of Ada.Streams without the
--  object oriented types.

package PolyORB_HI.Streams is

   pragma Pure;

   --  The definition of the types above requires the use of GNAT
   --  specific attributes 'Storage_Unit' and 'Address_Size'.

   pragma Warnings (Off);

   type Stream_Element is mod 2 ** Standard'Storage_Unit;

   type Stream_Element_Offset is range
     -(2 ** (Standard'Address_Size - 1)) ..
     +(2 ** (Standard'Address_Size - 1)) - 1;

   subtype Stream_Element_Count is
     Stream_Element_Offset range 0 .. Stream_Element_Offset'Last;

   type Stream_Element_Array is
     array (Stream_Element_Offset range <>) of aliased Stream_Element;

   pragma Warnings (On);

end PolyORB_HI.Streams;
