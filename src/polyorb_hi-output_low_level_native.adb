------------------------------------------------------------------------------
--                                                                          --
--                          PolyORB HI COMPONENTS                           --
--                                                                          --
--          P O L Y O R B _ H I . O U T P U T _ L O W _ L E V E L           --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--    Copyright (C) 2006-2009 Telecom ParisTech, 2010-2012 ESA & ISAE.      --
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

with Interfaces.C;
with System;

package body PolyORB_HI.Output_Low_Level is

   ---------
   -- Put --
   ---------

   procedure Put (S : String) is

      procedure C_Write
        (Fd  : Interfaces.C.int;
         P   : System.Address;
         Len : Interfaces.C.int);
      pragma Import (C, C_Write, "write");

   begin
      C_Write (2, S (S'First)'Address, S'Length);
      --  2 is standard error
   end Put;

   --------------
   -- New_Line --
   --------------

   procedure New_Line is
      S : String := (1 => Character'Val (10));

   begin
      Put (S);
   end New_Line;

end PolyORB_HI.Output_Low_Level;
