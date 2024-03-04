.class public final Ltwitter4j/util/TimeSpanConverter;
.super Ljava/lang/Object;
.source "TimeSpanConverter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final AN_HOUR_AGO:I = 0x4

.field private static final A_MINUTE_AGO:I = 0x2

.field private static final NOW:I = 0x0

.field private static final N_HOURS_AGO:I = 0x5

.field private static final N_MINUTES_AGO:I = 0x3

.field private static final N_SECONDS_AGO:I = 0x1

.field private static final ONE_DAY_IN_SECONDS:I = 0x15180

.field private static final ONE_HOUR_IN_SECONDS:I = 0xe10

.field private static final ONE_MONTH_IN_SECONDS:I = 0x278d00

.field private static final serialVersionUID:J = 0x315fa97e8ab96adaL


# instance fields
.field private final dateMonth:Ljava/text/SimpleDateFormat;

.field private final dateMonthYear:Ljava/text/SimpleDateFormat;

.field private final formats:[Ljava/text/MessageFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/util/TimeSpanConverter;-><init>(Ljava/util/Locale;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 9
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/text/MessageFormat;

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    .line 59
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "language":Ljava/lang/String;
    const-string v1, "it"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "Ora"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 62
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "{0} secondi fa"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 63
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "1 minuto fa"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v6

    .line 64
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "{0} minuti fa"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 65
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "1 ora fa"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 66
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v2, 0x5

    new-instance v3, Ljava/text/MessageFormat;

    const-string v4, "{0} ore fa"

    invoke-direct {v3, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 67
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 68
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM yy"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    .line 124
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v1, "kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "\uc9c0\uae08"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 71
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "{0}\ucd08 \uc804"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 72
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "1\ubd84 \uc804"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v6

    .line 73
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "{0}\ubd84 \uc804"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 74
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "1\uc2dc\uac04 \uc804"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 75
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v2, 0x5

    new-instance v3, Ljava/text/MessageFormat;

    const-string v4, "{0} ore fa"

    invoke-direct {v3, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 76
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M\uc6d4 d\uc77c"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 77
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yy\ub144 M\uc6d4 d\uc77c"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 78
    :cond_1
    const-string v1, "es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "Ahora"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 80
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "hace {0} segundos"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 81
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "hace 1 munito"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v6

    .line 82
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "hace {0} munitos"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 83
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "hace 1 hora"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 84
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v2, 0x5

    new-instance v3, Ljava/text/MessageFormat;

    const-string v4, "hace {0} horas"

    invoke-direct {v3, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 85
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 86
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM yy"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    .line 87
    :cond_2
    const-string v1, "fr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "Maintenant"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 89
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "Il y a {0} secondes"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 90
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "Il y a 1 minute"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v6

    .line 91
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "Il y a {0} minutes"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 92
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "Il y a 1 heure"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 93
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v2, 0x5

    new-instance v3, Ljava/text/MessageFormat;

    const-string v4, "Il y a {0} heures"

    invoke-direct {v3, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 94
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 95
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM yy"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    .line 96
    :cond_3
    const-string v1, "de"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "Jetzt"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 98
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "vor {0} Sekunden"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 99
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "vor 1 Minute"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v6

    .line 100
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "vor {0} Minuten"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 101
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "vor 1 Stunde"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 102
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v2, 0x5

    new-instance v3, Ljava/text/MessageFormat;

    const-string v4, "vor {0} Stunden"

    invoke-direct {v3, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 103
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 104
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM yy"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    .line 105
    :cond_4
    const-string v1, "ja"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "\u4eca"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 107
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "{0}\u79d2\u524d"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 108
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "1\u5206\u524d"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v6

    .line 109
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "{0}\u5206\u524d"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 110
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "1\u6642\u9593\u524d"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 111
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v2, 0x5

    new-instance v3, Ljava/text/MessageFormat;

    const-string v4, "{0}\u6642\u9593\u524d"

    invoke-direct {v3, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 112
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M\u6708d\u65e5"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 113
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yy\u5e74M\u6708d\u65e5"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    .line 115
    :cond_5
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "now"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 116
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "{0} seconds ago"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 117
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "1 minute ago"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v6

    .line 118
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "{0} minutes ago"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 119
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    const-string v3, "1 hour ago"

    invoke-direct {v2, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 120
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v2, 0x5

    new-instance v3, Ljava/text/MessageFormat;

    const-string v4, "{0} hours ago"

    invoke-direct {v3, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 121
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    .line 122
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM yy"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0
.end method

.method private toTimeSpanString(I)Ljava/lang/String;
    .locals 7
    .param p1, "deltaInSeconds"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 143
    if-gt p1, v4, :cond_0

    .line 144
    iget-object v2, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    aget-object v2, v2, v5

    invoke-virtual {v2, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 161
    :goto_0
    return-object v2

    .line 145
    :cond_0
    const/16 v2, 0x3c

    if-ge p1, v2, :cond_1

    .line 146
    iget-object v2, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    aget-object v2, v2, v4

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 149
    :cond_1
    const/16 v2, 0xa8c

    if-ge p1, v2, :cond_3

    .line 150
    div-int/lit8 v1, p1, 0x3c

    .line 151
    .local v1, "minutes":I
    if-ne v1, v4, :cond_2

    .line 152
    iget-object v2, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 154
    :cond_2
    iget-object v2, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 157
    .end local v1    # "minutes":I
    :cond_3
    const/16 v2, 0x189c

    if-ge p1, v2, :cond_4

    .line 158
    iget-object v2, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 160
    :cond_4
    add-int/lit16 v2, p1, 0x384

    div-int/lit16 v0, v2, 0xe10

    .line 161
    .local v0, "hours":I
    iget-object v2, p0, Ltwitter4j/util/TimeSpanConverter;->formats:[Ljava/text/MessageFormat;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final toTimeSpanString(J)Ljava/lang/String;
    .locals 7
    .param p1, "milliseconds"    # J

    .prologue
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 132
    .local v0, "deltaInSeconds":I
    const v1, 0x15180

    if-lt v0, v1, :cond_1

    .line 133
    const v1, 0x278d00

    if-lt v0, v1, :cond_0

    .line 134
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonthYear:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    .line 136
    :cond_0
    iget-object v1, p0, Ltwitter4j/util/TimeSpanConverter;->dateMonth:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0, v0}, Ltwitter4j/util/TimeSpanConverter;->toTimeSpanString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final toTimeSpanString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltwitter4j/util/TimeSpanConverter;->toTimeSpanString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
