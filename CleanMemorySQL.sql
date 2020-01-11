#
# Очистка процедурного кеша и буфферов сервера MS-SQL ]
# Рекомендуется делать не реже 1 раза в 8-12 часов,
# на нагруженных проектах можно делать запуск чаще!
#
#dbcc freeproccache
dbcc dropcleanbuffers
dbcc freesystemcache ('ALL') with MARK_IN_USE_FOR_REMOVAL
