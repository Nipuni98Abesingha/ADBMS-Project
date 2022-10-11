CREATE DEFINER=`root`@`localhost` PROCEDURE `EventCheck`(out BpartyEve text)
BEGIN
Select e.Price, d.disname,c.fname,c.f.lname , c.NIC from events e,customer c 
where Ev_type = 'Bparty' and menuType = 'LiteLunch';

end