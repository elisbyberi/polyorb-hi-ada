------------------------------------------------------------------------------
--                                                                          --
--                          PolyORB HI COMPONENTS                           --
--                                                                          --
--                         R E C E I V E R _ P K G                          --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                 Copyright (C) 2007, GET-Telecom Paris.                   --
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
--                PolyORB HI is maintained by GET Telecom Paris             --
--                                                                          --
------------------------------------------------------------------------------

--  $Id: receiver_pkg.adb 5381 2007-12-23 12:39:41Z zalila $

with PolyORB_HI.Output;

package body Receiver_Pkg is

   use PolyORB_HI_Generated.Types;
   use PolyORB_HI.Output;

   ------------------
   -- Receive_Data --
   ------------------

   procedure Receive_Data
     (Data_Sink : PolyORB_HI_Generated.Types.Integer_Type)
   is
   begin
      Put_Line ("***  Receiver: Received data:"
                & Integer_Type'Image (Data_Sink)
                & " ***");
   end Receive_Data;

end Receiver_Pkg;
