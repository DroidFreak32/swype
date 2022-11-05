.class Lcom/nuance/connect/util/Logger$DeveloperLog;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/util/Logger$Log;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeveloperLog"
.end annotation


# static fields
.field private static final CUSTOM_LOG_LEVEL_DEFAULT:I = 0x1


# instance fields
.field private customLogLevel:I

.field private final loggerType:Lcom/nuance/connect/util/Logger$LoggerType;

.field private final prefix:Ljava/lang/String;

.field private threadIdLoggingEnabled:Z


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/util/Logger$LoggerType;)V
    .registers 3

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/nuance/connect/util/Logger$LoggerType;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->customLogLevel:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->loggerType:Lcom/nuance/connect/util/Logger$LoggerType;

    iput p2, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->customLogLevel:I

    return-void
.end method

.method protected constructor <init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->customLogLevel:I

    if-nez p2, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_e
    iput-object p2, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->loggerType:Lcom/nuance/connect/util/Logger$LoggerType;

    return-void
.end method

.method protected constructor <init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->customLogLevel:I

    if-nez p2, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_e
    iput-object p2, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->loggerType:Lcom/nuance/connect/util/Logger$LoggerType;

    iput p3, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->customLogLevel:I

    return-void
.end method

.method protected constructor <init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->threadIdLoggingEnabled:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    const/4 v2, 0x3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    const/4 v2, 0x3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    const/4 v2, 0x3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    const/4 v2, 0x3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    const/4 v2, 0x3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 14

    const/4 v2, 0x3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15

    const/4 v2, 0x3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 16

    const/4 v2, 0x3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 17

    const/4 v0, 0x3

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const/4 v2, 0x7

    aput-object p8, v1, v2

    const/16 v2, 0x8

    aput-object p9, v1, v2

    const/16 v2, 0x9

    aput-object p10, v1, v2

    const/16 v2, 0xa

    aput-object p11, v1, v2

    const/16 v2, 0xb

    aput-object p12, v1, v2

    const/16 v2, 0xc

    aput-object p13, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x6

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x6

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x6

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    const/4 v0, 0x6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    const/4 v2, 0x6

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    aput-object p7, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    const/4 v2, 0x6

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    aput-object p7, v0, v2

    const/4 v1, 0x7

    aput-object p8, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    const/4 v2, 0x4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    const/4 v2, 0x4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    const/4 v1, 0x5

    aput-object p6, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    const/4 v2, 0x4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    const/4 v2, 0x4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isLoggable(I)Z
    .registers 7

    const/4 v0, 0x1

    return v0
    # const/4 v1, 0x1

    # const/4 v2, 0x0

    # iget v0, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->customLogLevel:I

    # const/4 v3, -0x1

    # if-ne v0, v3, :cond_1b

    # sget v0, Lcom/nuance/connect/util/Logger;->logLevel:I

    # :goto_9
    # if-lt p1, v0, :cond_1e

    # move v0, v1

    # :goto_c
    # iget-object v3, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->loggerType:Lcom/nuance/connect/util/Logger$LoggerType;

    # sget-object v4, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    # if-ne v3, v4, :cond_22

    # if-eqz v0, :cond_20

    # # getter for: Lcom/nuance/connect/util/Logger;->developerLogEnabled:Z
    # invoke-static {}, Lcom/nuance/connect/util/Logger;->access$000()Z

    # move-result v0

    # if-eqz v0, :cond_20

    # :goto_1a
    # return v1

    # :cond_1b
    # iget v0, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->customLogLevel:I

    # goto :goto_9

    # :cond_1e
    # move v0, v2

    # goto :goto_c

    # :cond_20
    # move v1, v2

    # goto :goto_1a

    # :cond_22
    # move v1, v0

    # goto :goto_1a
.end method

.method protected log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->prefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->threadIdLoggingEnabled:Z

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_43

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    :goto_43
    # getter for: Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$100()Lcom/nuance/connect/util/Logger$OutputMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    if-eq v1, v2, :cond_53

    # getter for: Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$100()Lcom/nuance/connect/util/Logger$OutputMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/util/Logger$OutputMode;->LOG_AND_FILE:Lcom/nuance/connect/util/Logger$OutputMode;

    if-ne v1, v2, :cond_5d

    :cond_53
    const-string/jumbo v1, "ConnectSDK"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_5d
    # getter for: Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$100()Lcom/nuance/connect/util/Logger$OutputMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/util/Logger$OutputMode;->FILE:Lcom/nuance/connect/util/Logger$OutputMode;

    if-eq v0, v1, :cond_6d

    # getter for: Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$100()Lcom/nuance/connect/util/Logger$OutputMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/util/Logger$OutputMode;->LOG_AND_FILE:Lcom/nuance/connect/util/Logger$OutputMode;

    if-ne v0, v1, :cond_7a

    :cond_6d
    # getter for: Lcom/nuance/connect/util/Logger;->outputFile:Ljava/io/File;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$200()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7a

    # getter for: Lcom/nuance/connect/util/Logger;->outputFile:Ljava/io/File;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$200()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    :cond_7a
    return-void

    :cond_7b
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_43
.end method

.method protected varargs logConcat(I[Ljava/lang/Object;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_17

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1f
    return-void
.end method

.method public setCustomLogLevel(I)V
    .registers 2

    iput p1, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->customLogLevel:I

    return-void
.end method

.method public v(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    const/4 v2, 0x2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    const/4 v2, 0x2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    const/4 v2, 0x2

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    const/4 v2, 0x2

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    const/4 v2, 0x2

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x5

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x5

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    const/4 v2, 0x5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    aput-object p6, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    const/4 v2, 0x5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    aput-object p6, v0, v2

    const/4 v1, 0x6

    aput-object p7, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    const/4 v2, 0x5

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    aput-object p6, v0, v2

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;->logConcat(I[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
