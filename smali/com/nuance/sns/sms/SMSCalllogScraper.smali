.class public Lcom/nuance/sns/sms/SMSCalllogScraper;
.super Lcom/nuance/sns/ScraperService;
.source "SMSCalllogScraper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;
    }
.end annotation


# static fields
.field public static final DEFAULT_SMS_CALLLOG_SENT_DATE_IN_MINUTES:I = 0x2760

.field public static final MAX_SMS_MESSAGES_READ:I = 0x1a4

.field private static final MAX_WORD_LENGTH:I = 0x20

.field private static final MIN_WORD_LENGTH:I = 0x1

.field private static final PHONE_LOOKUP_DISPLAY_NAME:[Ljava/lang/String;

.field public static final SMS_CALLLOG_SCRAPE_TARGET:Ljava/lang/String; = "SMS_CALLLOG_SCRAPE_TARGET"

.field public static final SMS_CALLLOG_SENT_DATE_IN_MINUTES:Ljava/lang/String; = "SMS_CALLLOG_SENT_DATE_IN_MINUTES"

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private scrapeTarget:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

.field scraperStatus:Lcom/nuance/sns/ScraperStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-string v0, "SMSCalllogScraper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/sns/sms/SMSCalllogScraper;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/sns/sms/SMSCalllogScraper;->PHONE_LOOKUP_DISPLAY_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "smscalllog_scrapper"

    invoke-direct {p0, v0}, Lcom/nuance/sns/ScraperService;-><init>(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->CALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    iput-object v0, p0, Lcom/nuance/sns/sms/SMSCalllogScraper;->scrapeTarget:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    .line 50
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/nuance/sns/ScraperService;->onCreate()V

    .line 55
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getScraperStatusFactory()Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getSMSCalllogStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/sns/sms/SMSCalllogScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 57
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 32
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v21

    .line 62
    .local v21, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v29

    .line 63
    .local v29, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    if-eqz v29, :cond_1

    invoke-virtual/range {v29 .. v29}, Lcom/nuance/swype/input/UserPreferences;->getAutoImportContacts()Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/sns/sms/SMSCalllogScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/sns/sms/SMSCalllogScraper;->getStringDateNow()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/nuance/sns/sms/SMSCalllogScraper;->updateWorkingStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    .line 71
    const-string v4, "SMS_CALLLOG_SENT_DATE_IN_MINUTES"

    const/16 v6, 0x2760

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 74
    .local v24, "minutesSinceLastScraped":I
    const-string v4, "SMS_CALLLOG_SCRAPE_TARGET"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v28

    .line 75
    .local v28, "target":Ljava/io/Serializable;
    if-eqz v28, :cond_2

    .line 76
    check-cast v28, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    .end local v28    # "target":Ljava/io/Serializable;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/sns/sms/SMSCalllogScraper;->scrapeTarget:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    .line 79
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 80
    .local v12, "cal":Ljava/util/Calendar;
    const/16 v4, 0xc

    move/from16 v0, v24

    neg-int v6, v0

    invoke-virtual {v12, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 82
    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getSmsCalllogContactsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v17

    .line 86
    .local v17, "contactsBucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/sns/sms/SMSCalllogScraper;->scrapeTarget:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    sget-object v6, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->CALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    if-eq v4, v6, :cond_a

    .line 87
    new-instance v4, Lcom/nuance/sns/sms/SMSReader;

    invoke-direct {v4}, Lcom/nuance/sns/sms/SMSReader;-><init>()V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/sns/sms/SMSCalllogScraper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "inbox"

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/nuance/sns/sms/SMSReader;->read(Landroid/content/Context;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v18

    .line 89
    .local v18, "cursor":Landroid/database/Cursor;
    if-eqz v18, :cond_a

    .line 92
    :try_start_0
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 93
    .local v15, "contactNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 94
    .local v16, "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v25, 0x0

    .line 95
    .local v25, "msgCount":I
    :goto_1
    const/16 v4, 0x1a4

    move/from16 v0, v25

    if-ge v0, v4, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    invoke-static/range {v18 .. v18}, Lcom/nuance/sns/sms/SMSReader;->getAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "address":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 100
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 101
    invoke-interface {v15, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    :goto_2
    add-int/lit8 v25, v25, 0x1

    .line 107
    goto :goto_1

    .line 103
    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 134
    .end local v10    # "address":Ljava/lang/String;
    .end local v15    # "contactNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25    # "msgCount":I
    :catchall_0
    move-exception v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 135
    throw v4

    .line 110
    .restart local v15    # "contactNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v25    # "msgCount":I
    :cond_5
    :try_start_1
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 111
    .local v27, "number":Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 114
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/sns/sms/SMSCalllogScraper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/nuance/sns/sms/SMSCalllogScraper;->PHONE_LOOKUP_DISPLAY_NAME:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .line 116
    .local v14, "contactCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_6

    .line 119
    :cond_7
    :goto_4
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 120
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 121
    .local v13, "contact":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 122
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 126
    .end local v13    # "contact":Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 131
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v14    # "contactCursor":Landroid/database/Cursor;
    .end local v27    # "number":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->add(Ljava/util/Set;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 137
    sget-object v4, Lcom/nuance/sns/sms/SMSCalllogScraper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "contactsBucket.size() after SMS reading = "

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .end local v15    # "contactNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "contacts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "cursor":Landroid/database/Cursor;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v25    # "msgCount":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/sns/sms/SMSCalllogScraper;->scrapeTarget:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    sget-object v6, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->SMS:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    if-eq v4, v6, :cond_10

    .line 143
    new-instance v4, Lcom/nuance/sns/sms/CalllogReader;

    invoke-direct {v4}, Lcom/nuance/sns/sms/CalllogReader;-><init>()V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/sns/sms/SMSCalllogScraper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v4, v6, v8, v9}, Lcom/nuance/sns/sms/CalllogReader;->read(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v18

    .line 145
    .restart local v18    # "cursor":Landroid/database/Cursor;
    if-eqz v18, :cond_10

    .line 149
    :cond_b
    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 150
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 152
    .local v26, "name":Ljava/lang/String;
    if-eqz v26, :cond_b

    .line 153
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v23

    .line 158
    .local v23, "len":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 159
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 161
    add-int/lit8 v22, v19, 0x1

    .local v22, "j":I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 162
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 164
    .local v11, "c":C
    const/16 v4, 0x2d

    if-eq v11, v4, :cond_c

    const/16 v4, 0x27

    if-eq v11, v4, :cond_c

    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 165
    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 169
    .end local v11    # "c":C
    :cond_d
    move-object/from16 v0, v26

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 170
    .local v30, "word":Ljava/lang/String;
    add-int/lit8 v19, v22, -0x1

    .line 176
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    .line 177
    .local v31, "wordLen":I
    const/16 v4, 0x20

    move/from16 v0, v31

    if-ge v0, v4, :cond_e

    const/4 v4, 0x1

    move/from16 v0, v31

    if-le v0, v4, :cond_e

    .line 178
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->add(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 158
    .end local v22    # "j":I
    .end local v30    # "word":Ljava/lang/String;
    .end local v31    # "wordLen":I
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 186
    .end local v19    # "i":I
    .end local v23    # "len":I
    .end local v26    # "name":Ljava/lang/String;
    :cond_f
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 188
    sget-object v4, Lcom/nuance/sns/sms/SMSCalllogScraper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "contactsBucket.size() after Calllog reading = "

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .end local v18    # "cursor":Landroid/database/Cursor;
    :cond_10
    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 193
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->notifyNewWordsForScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 197
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/sns/sms/SMSCalllogScraper;->scraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/sns/sms/SMSCalllogScraper;->getStringDateNow()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/nuance/sns/sms/SMSCalllogScraper;->updateFinishedStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v4
.end method
