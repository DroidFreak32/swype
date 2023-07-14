.class public Lcom/nuance/connect/util/Logger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/Logger$1;,
        Lcom/nuance/connect/util/Logger$Trace;,
        Lcom/nuance/connect/util/Logger$DeveloperLog;,
        Lcom/nuance/connect/util/Logger$Log;,
        Lcom/nuance/connect/util/Logger$OutputMode;,
        Lcom/nuance/connect/util/Logger$LoggerType;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x1

.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "ConnectSDK"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static final customerLog:Lcom/nuance/connect/util/Logger$Log;

.field private static final developerLog:Lcom/nuance/connect/util/Logger$Log;

.field private static developerLogEnabled:Z

.field protected static volatile logLevel:I

.field private static final oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private static outputFile:Ljava/io/File;

.field private static outputMode:Lcom/nuance/connect/util/Logger$OutputMode;

.field private static trace:Lcom/nuance/connect/util/Logger$Trace;

.field private static final traceCreateLock:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x6

    sput v0, Lcom/nuance/connect/util/Logger;->logLevel:I

    sput-boolean v3, Lcom/nuance/connect/util/Logger;->developerLogEnabled:Z

    sget-object v0, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    sput-object v0, Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;

    new-instance v0, Lcom/nuance/connect/util/Logger$DeveloperLog;

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-direct {v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;)V

    sput-object v0, Lcom/nuance/connect/util/Logger;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/util/Logger$DeveloperLog;

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-direct {v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;)V

    sput-object v0, Lcom/nuance/connect/util/Logger;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/util/Logger$DeveloperLog;

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;I)V

    sput-object v0, Lcom/nuance/connect/util/Logger;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    new-array v0, v3, [I

    sput-object v0, Lcom/nuance/connect/util/Logger;->traceCreateLock:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/nuance/connect/util/Logger;->developerLogEnabled:Z

    return v0
.end method

.method static synthetic access$100()Lcom/nuance/connect/util/Logger$OutputMode;
    .locals 1

    sget-object v0, Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;

    return-object v0
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/nuance/connect/util/Logger;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method public static configure(ZILcom/nuance/connect/util/Logger$OutputMode;Ljava/io/File;)V
    .locals 3

    sput-object p2, Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;

    if-lez p1, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown log level "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;

    sget-object v1, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    if-eq v0, v1, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Log file required for selected output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sput-object p3, Lcom/nuance/connect/util/Logger;->outputFile:Ljava/io/File;

    sget v0, Lcom/nuance/connect/util/Logger;->logLevel:I

    if-eq v0, p1, :cond_3

    sput p1, Lcom/nuance/connect/util/Logger;->logLevel:I

    const-string/jumbo v0, "ConnectSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Changing log level to : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v0, Lcom/nuance/connect/util/Logger;->developerLogEnabled:Z

    if-eq p0, v0, :cond_4

    sput-boolean p0, Lcom/nuance/connect/util/Logger;->developerLogEnabled:Z

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Developer log enabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$1;->$SwitchMap$com$nuance$connect$util$Logger$LoggerType:[I

    invoke-virtual {p0}, Lcom/nuance/connect/util/Logger$LoggerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/nuance/connect/util/Logger;->developerLog:Lcom/nuance/connect/util/Logger$Log;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/nuance/connect/util/Logger;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/nuance/connect/util/Logger;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/nuance/connect/util/Logger$DeveloperLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getThreadLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/nuance/connect/util/Logger$DeveloperLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static getTrace()Lcom/nuance/connect/util/Logger$Trace;
    .locals 3

    sget-object v1, Lcom/nuance/connect/util/Logger;->traceCreateLock:[I

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nuance/connect/util/Logger;->trace:Lcom/nuance/connect/util/Logger$Trace;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/util/Logger$Trace;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/nuance/connect/util/Logger$Trace;-><init>(Lcom/nuance/connect/util/Logger$1;)V

    sput-object v0, Lcom/nuance/connect/util/Logger;->trace:Lcom/nuance/connect/util/Logger$Trace;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/nuance/connect/util/Logger;->trace:Lcom/nuance/connect/util/Logger$Trace;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
