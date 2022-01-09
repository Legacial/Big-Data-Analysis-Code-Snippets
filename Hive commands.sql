1. Date functionality
select srcip as source_ip, dstip as destination_ip, from_unixtime(stime) as start_time, from_unixtime(ltime) as end_time, dur as duration, attack_cat as attack_category 
from cyber_dataset where attack_cat !="" sort by start_time asc;



2. Math functionality
select count(distinct proto) as protocol, proto, avg(dur) from cyber_dataset group by proto sort by proto desc;



3. Conditional functionality
SELECT srcip,
    count(*) as total_attacks,
    sum(case when attack_cat = 'Analysis' then 1 else 0 end) AS Analysis,
    sum(case when attack_cat = 'Backdoors' then 1 else 0 end) AS Backdoors,
    sum(case when attack_cat = 'DoS' then 1 else 0 end) AS DoS,
    sum(case when attack_cat = 'Exploits' then 1 else 0 end) AS Exploits,
    sum(case when attack_cat = ' Fuzzers' then 1 else 0 end) AS Fuzzers,
    sum(case when attack_cat = 'Generic' then 1 else 0 end) AS Generic,
    sum(case when attack_cat = 'Reconnaissance' then 1 else 0 end) AS Reconnaissance,
    sum(case when attack_cat = 'Shellcode' then 1 else 0 end) AS Shellcode,
    sum(case when attack_cat = 'Worms' then 1 else 0 end) AS Worms
FROM cyber_dataset
where attack_cat!=""
GROUP BY srcip


4. String functionality
select ltrim(attack_cat) as attacks, count(attack_cat) as attack_counts from cyber_dataset where attack_cat !=" " group by attack_cat
