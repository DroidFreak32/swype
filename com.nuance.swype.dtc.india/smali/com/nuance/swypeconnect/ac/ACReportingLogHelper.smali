.class public Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$2;,
        Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;,
        Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;
    }
.end annotation


# static fields
.field private static final LITE_REMOVE_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_CONTEXT_COUNT:I = 0x3

.field private static final MAX_SEARCH_QUERY:I = 0xc8

.field private static final NUMBER_REMOVE_PATTERN:Ljava/util/regex/Pattern;

.field private static final NUMBER_REPLACE:Ljava/lang/String; = "#"

.field private static final SELECTION_LIST_SEPARATOR_FIELD:C = ' '

.field private static final SEPARATOR_FIELD:C = ','

.field private static final SEPARATOR_ITEMS:C = ':'

.field private static final developerLog:Lcom/nuance/connect/util/Logger$Log;

.field private static final oemLog:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private currentInfo:Landroid/view/inputmethod/EditorInfo;

.field private currentInputState:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

.field private language:Lcom/nuance/swypeconnect/ac/ACLanguage;

.field private lastMark:J

.field private final listener:Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

.field private final spokenTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

.field private final swypeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

.field private final tapTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

.field private verifiedSearch:Z

.field private final writeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

.field private writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v0, "[0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->NUMBER_REMOVE_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "[\\d\\-\\(\\)\\.]{4,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->LITE_REMOVE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->lastMark:J

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$1;-><init>(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->listener:Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->UNKNOWN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInputState:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->swypeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->tapTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->spokenTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-direct {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->logTrackRates()V

    return-void
.end method

.method static synthetic access$102(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;J)J
    .locals 1

    iput-wide p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->lastMark:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->verifiedSearch:Z

    return p1
.end method

.method static synthetic access$302(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;)Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInputState:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    return-object p1
.end method

.method static synthetic access$402(Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/EditorInfo;
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    return-object p1
.end method

.method private filterText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->NUMBER_REMOVE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private filterTextLite(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->LITE_REMOVE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private filterUrls(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "<URL>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getDefaultName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logTrackRates()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->swypeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->hasTrackingInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->swypeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->getWordCount()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->swypeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->getDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->trackSwyped(II)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->swypeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->reset()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->tapTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->hasTrackingInformation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->tapTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->getWordCount()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->tapTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->getDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->trackTapped(II)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->tapTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->reset()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->hasTrackingInformation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->getWordCount()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->getDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->trackWritten(II)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->reset()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->spokenTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->hasTrackingInformation()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->spokenTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->getWordCount()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->spokenTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->getDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->trackSpoken(II)V

    :cond_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->spokenTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->reset()V

    return-void
.end method


# virtual methods
.method disable()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->listener:Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguage;->unregisterListener(Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;)V

    return-void
.end method

.method enable()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->swypeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->reset()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->tapTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->reset()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->spokenTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->reset()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->reset()V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->UNKNOWN:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInputState:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->listener:Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguage;->registerListener(Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;)V

    return-void
.end method

.method init(Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;Lcom/nuance/swypeconnect/ac/ACLanguage;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->language:Lcom/nuance/swypeconnect/ac/ACLanguage;

    return-void
.end method

.method mark()V
    .locals 4

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$2;->$SwitchMap$com$nuance$swypeconnect$ac$ACReportingService$InputType:[I

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInputState:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Unknown input state"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->lastMark:J

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->tapTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->lastMark:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->addTimeToSession(J)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->swypeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->lastMark:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->addTimeToSession(J)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->lastMark:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->addTimeToSession(J)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->spokenTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    iget-wide v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->lastMark:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->addTimeToSession(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method mark(I)V
    .locals 1

    invoke-static {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->from(I)Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInputState:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->mark()V

    return-void
.end method

.method mark(II)V
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->mark(I)V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$2;->$SwitchMap$com$nuance$swypeconnect$ac$ACReportingService$InputType:[I

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInputState:Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$InputType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Unknown input state"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->tapTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0, p2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->incrementWordCount(I)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->WORD_TAPPED_COUNT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    int-to-double v4, p2

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logAggregate(Ljava/lang/String;Ljava/lang/String;DDLjava/util/Date;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->swypeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0, p2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->incrementWordCount(I)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->WORD_SWYPED_COUNT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    int-to-double v4, p2

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logAggregate(Ljava/lang/String;Ljava/lang/String;DDLjava/util/Date;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writeTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0, p2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->incrementWordCount(I)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->WORD_HANDWRITTEN_COUNT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    int-to-double v4, p2

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logAggregate(Ljava/lang/String;Ljava/lang/String;DDLjava/util/Date;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->spokenTracker:Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;

    invoke-virtual {v0, p2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$WPMTracker;->incrementWordCount(I)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->WORD_SPOKEN_COUNT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    int-to-double v4, p2

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logAggregate(Ljava/lang/String;Ljava/lang/String;DDLjava/util/Date;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public processBuffer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->isReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->processBufferNGram(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->processBufferSearch(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method processBuffer(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->isReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->processBufferNGram(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;->getEnterKeySelected()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->processBufferSearch(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method processBufferNGram(Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->isReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SEVENGRAM_LOGGING:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0, v2}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->isEntryAllowed(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processBufferNGram not allowed"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ignoring NGram: no input"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0, v2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;-><init>(Landroid/view/inputmethod/EditorInfo;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isNumberField()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isPhoneNumberField()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isPostalAddress()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isNameField()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isDateTimeField()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isEmailAddressField()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isPhoneticField()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ignoring NGram: illegal field"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->NUMBER_REMOVE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "ignoring NGram: only digits"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->filterUrls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->filterTextLite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    if-lez v0, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_1
    array-length v2, v6

    if-ge v0, v2, :cond_f

    const/4 v2, 0x3

    if-lt v0, v2, :cond_a

    add-int/lit8 v2, v0, -0x3

    :goto_2
    add-int/lit8 v3, v0, 0x4

    array-length v8, v6

    if-gt v3, v8, :cond_b

    add-int/lit8 v3, v0, 0x4

    :goto_3
    if-ge v2, v3, :cond_e

    if-eq v2, v0, :cond_8

    add-int/lit8 v8, v0, 0x1

    if-ne v2, v8, :cond_c

    :cond_8
    const-string/jumbo v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v2, 0x1

    if-ne v8, v3, :cond_9

    if-ne v2, v0, :cond_d

    const-string/jumbo v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_2

    :cond_b
    array-length v3, v6

    goto :goto_3

    :cond_c
    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "::"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SEVENGRAM_LOGGING:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method processBufferSearch(Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Not logging search: buffer empty"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Not logging search: same as label"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Not logging search: same as hint text"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->currentInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;-><init>(Landroid/view/inputmethod/EditorInfo;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isSearchField()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isActionGoField()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Not logging search: not a search field"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->verifiedSearch:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isMultilineField()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isNumberField()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isPostalAddress()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isNameField()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isShortMessageField()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isEmailSubjectField()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isLongMessageField()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isDateTimeField()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isEmailAddressField()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper$InputFieldInfo;->isPhoneticField()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Not logging search: not acceptible input field"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->verifiedSearch:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Not logging search: contains newlines"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_9

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Not logging search: too long"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->NUMBER_REMOVE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Not logging search: only numbers"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->filterTextLite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SEARCH_LOGGING:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->PARTIAL_SEARCH:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public recordAlternativeText(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->ALTERNATIVE_TEXT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method recordDeleteWord(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->DELETED_WORD:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->filterText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public recordInlineText(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->INLINE_TEXT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->filterText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public recordKeyCode(IZ)V
    .locals 6

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->KEYCODE_LONG:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->KEYCODE_TAPPED:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordKeyboardLayerChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "LayerChange_from="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->KEYBOARD_PAGE_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Z)V

    return-void
.end method

.method recordLanguage([II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    :goto_0
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget v2, p1, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array p1, v0, [I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->LANGUAGE_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->from(I)Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method recordLocale(Ljava/util/Locale;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->LOCALE_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public recordSelectedWord(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_WORD:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public recordSelectionListContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->isReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_CONTEXT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->isEntryAllowed(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "recordSelectionListContext not allowed"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    move v2, v3

    :goto_1
    const/4 v0, 0x3

    if-ge v2, v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_3
    if-ltz v1, :cond_6

    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    const/16 v7, 0x20

    invoke-virtual {v5, v3, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_CONTEXT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->filterText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public recordSelectionListOptions([Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->isReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_OPTIONS:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->isEntryAllowed(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "recordSelectionListOptions not allowed"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-direct {p0, v2}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->filterText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_OPTIONS:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordSettingChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SETTINGS_CHANGE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "after:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "before:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public recordShiftMargin(I)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SHIFT_MARGIN:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public recordShiftState(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SHIFT_STATE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method recordUdbAdd(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->UDB_ADD:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->filterText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Z)V

    return-void
.end method

.method recordUdbDelete(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->UDB_DELETE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->filterText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Z)V

    return-void
.end method

.method public setVerifiedSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->verifiedSearch:Z

    return-void
.end method

.method public trackDistanceSwype(J)V
    .locals 11

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->TOTAL_SWYPE_DISTANCE:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    long-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logAggregate(Ljava/lang/String;Ljava/lang/String;DDLjava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method trackSpoken(II)V
    .locals 10

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->WPM_SPOKEN:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    int-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logAggregate(Ljava/lang/String;Ljava/lang/String;DDLjava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method trackSwyped(II)V
    .locals 10

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->WPM_SWYPED:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    int-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logAggregate(Ljava/lang/String;Ljava/lang/String;DDLjava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method trackTapped(II)V
    .locals 10

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->WPM_TAPPED:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    int-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logAggregate(Ljava/lang/String;Ljava/lang/String;DDLjava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method trackWritten(II)V
    .locals 10

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->WPM_HANDWRITTEN:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    int-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object v9, v8

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logAggregate(Ljava/lang/String;Ljava/lang/String;DDLjava/util/Date;Ljava/lang/String;)V

    return-void
.end method
