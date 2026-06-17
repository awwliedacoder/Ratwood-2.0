/datum/vote/storyteller
	name = "storyteller"
	default_message = "Vote for the next storyteller."
	count_method = VOTE_COUNT_METHOD_SINGLE
	winner_method = VOTE_WINNER_METHOD_SIMPLE

/datum/vote/storyteller/New()
	. = ..()
	default_choices = SSgamemode.storyteller_vote_choices()
/datum/vote/storyteller/create_vote()
	default_choices = SSgamemode.storyteller_vote_choices()
	return ..()

/datum/vote/storyteller/finalize_vote(winning_option)
	SSgamemode.storyteller_vote_result(winning_option)
