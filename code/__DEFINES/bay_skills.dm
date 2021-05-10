// A do_after that purely check for skill.
#define SKILL_CHECK(user, type, difficulty, def_time) if(!do_after(def_time / (1 + user?.mind.bay_skills.getRating(type) / difficulty))) return

// An additional value to existing do_after variables.
#define SKILL_CHECK_VALUE(user, type, difficulty) (1 + (user?.mind.bay_skills.getRating(type) / difficulty))
