SELECT owners.name as owner_name, COUNT(pets.id) FROM pets
JOIN pet_owners
ON pet_owners.pet_id = pets.id
JOIN owners
ON pet_owners.owner_id = owners.id
GROUP BY (owners.id);