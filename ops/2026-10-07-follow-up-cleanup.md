# 7 Oct 2026: follow-up cleanup and Rikas closed

Why: the 6 Oct machine audit found 8 of 20 open follow-ups were duplicates made by a stage drag, and lead 84
(City Bike Sale, Rikas) had a loss reason but was still open. Code fixed in commit 75d22c2.

Changed (nothing deleted):
- pipeline 84: stage contacted -> closed_lost, lost_reason Budget -> price, closed_at set. Activity note added.
- lead_follow_ups 55, 56, 59, 60, 67, 68, 69: is_done true, note + "(closed 7 Oct: duplicate made by a stage drag)".
- lead_follow_ups 70: is_done true, note + "(closed 7 Oct: lead lost on price)".

Undo:
update pipeline set stage='contacted', lost_reason='Budget', closed_at=null where id=84;
update lead_follow_ups set is_done=false, completed_at=null, note=regexp_replace(note,' \(closed 7 Oct: [^)]*\)$','') where id in (55,56,59,60,67,68,69,70);
