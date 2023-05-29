select N , (case
                when P is null then 'Root'
                when N not in (select P from BST where p is not null group by P) then 'Leaf'
                else 'Inner'
            end) as type
from BST
order by N