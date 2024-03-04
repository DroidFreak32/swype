.class public abstract Lcom/nuance/swype/stats/AbstractScribe;
.super Ljava/lang/Object;
.source "AbstractScribe.java"


# static fields
.field private static final NAME_SEPARATOR:Ljava/lang/String; = "|"

.field private static final NUMBER_REMOVE_PATTERN:Ljava/util/regex/Pattern;

.field private static final NUMBER_REPLACE:Ljava/lang/String; = "#"

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private allowedToSend:Z

.field protected context:Landroid/content/Context;

.field private currentApplication:Ljava/lang/String;

.field private currentFieldInfo:I

.field private currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field private filter:Lcom/nuance/swype/stats/ScribeFilter;

.field private final statsContextObserver:Lcom/nuance/swype/util/Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "[0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/stats/AbstractScribe;->NUMBER_REMOVE_PATTERN:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "Stats"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/stats/AbstractScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/stats/AbstractScribe;->allowedToSend:Z

    .line 33
    new-instance v0, Lcom/nuance/swype/stats/AbstractScribe$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/stats/AbstractScribe$1;-><init>(Lcom/nuance/swype/stats/AbstractScribe;)V

    iput-object v0, p0, Lcom/nuance/swype/stats/AbstractScribe;->statsContextObserver:Lcom/nuance/swype/util/Observer;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->allowedToSend:Z

    .line 33
    new-instance v1, Lcom/nuance/swype/stats/AbstractScribe$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/stats/AbstractScribe$1;-><init>(Lcom/nuance/swype/stats/AbstractScribe;)V

    iput-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->statsContextObserver:Lcom/nuance/swype/util/Observer;

    .line 49
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/nuance/swype/stats/AbstractScribe;->context:Landroid/content/Context;

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->allowedToSend:Z

    .line 53
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 54
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->statsContextObserver:Lcom/nuance/swype/util/Observer;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->registerContextObserver(Lcom/nuance/swype/util/Observer;)V

    .line 56
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentApplicationName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->currentApplication:Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentFieldInfo()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->currentFieldInfo:I

    .line 58
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 59
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getScribeFilter()Lcom/nuance/swype/stats/ScribeFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->filter:Lcom/nuance/swype/stats/ScribeFilter;

    .line 61
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/stats/AbstractScribe;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/stats/AbstractScribe;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/stats/AbstractScribe;->currentApplication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/nuance/swype/stats/AbstractScribe;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/stats/AbstractScribe;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/nuance/swype/stats/AbstractScribe;->currentFieldInfo:I

    return p1
.end method

.method static synthetic access$202(Lcom/nuance/swype/stats/AbstractScribe;Lcom/nuance/swype/input/InputMethods$Language;)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/stats/AbstractScribe;
    .param p1, "x1"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/stats/AbstractScribe;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object p1
.end method

.method static synthetic access$302(Lcom/nuance/swype/stats/AbstractScribe;Lcom/nuance/swype/stats/ScribeFilter;)Lcom/nuance/swype/stats/ScribeFilter;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/stats/AbstractScribe;
    .param p1, "x1"    # Lcom/nuance/swype/stats/ScribeFilter;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/stats/AbstractScribe;->filter:Lcom/nuance/swype/stats/ScribeFilter;

    return-object p1
.end method

.method public static filterString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/swype/stats/AbstractScribe;->NUMBER_REMOVE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/stats/AbstractScribe;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getReportingService()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected allowedProcess(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;)Z
    .locals 1
    .param p1, "point"    # Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/stats/AbstractScribe;->allowedProcess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected allowedProcess(Ljava/lang/String;)Z
    .locals 3
    .param p1, "statistic"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-boolean v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->allowedToSend:Z

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->filter:Lcom/nuance/swype/stats/ScribeFilter;

    if-eqz v1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/stats/AbstractScribe;->filter:Lcom/nuance/swype/stats/ScribeFilter;

    invoke-interface {v0, p1}, Lcom/nuance/swype/stats/ScribeFilter;->isDataPointAllowed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v1

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->SELECTION_LIST_CONTEXT:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACReportingService;->isEntryAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getDefaultExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/nuance/swype/stats/AbstractScribe;->currentFieldInfo:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "name":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->currentApplication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getHelper()Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->getHelper()Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->getHelper()Lcom/nuance/swypeconnect/ac/ACReportingLogHelper;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/oem_62314/ACReportingLogHelperNuance;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTracker()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->getIntervalTracker()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingIntervalTracker;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V
    .locals 1
    .param p1, "point"    # Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/swype/stats/AbstractScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "point"    # Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nuance/swype/stats/AbstractScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "point"    # Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->getWriter()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected sendStatFiltered(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V
    .locals 1
    .param p1, "point"    # Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p2}, Lcom/nuance/swype/stats/AbstractScribe;->filterString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/stats/AbstractScribe;->sendStat(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected sendStatToConnectFiltered(Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "point"    # Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getReporting()Lcom/nuance/swypeconnect/ac/ACReportingService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACReportingService;->getWriter()Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/stats/AbstractScribe;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/nuance/swype/stats/AbstractScribe;->filterString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method
