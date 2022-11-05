.class public final Lcom/nuance/swype/util/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/util/LogManager$Trace;,
        Lcom/nuance/swype/util/LogManager$AndroidLog;,
        Lcom/nuance/swype/util/LogManager$Log;
    }
.end annotation


# static fields
.field private static volatile loggableLevel:I

.field private static final rootLog:Lcom/nuance/swype/util/LogManager$Log;

.field private static trace:Lcom/nuance/swype/util/LogManager$Trace;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, 0x1

    sput v0, Lcom/nuance/swype/util/LogManager;->loggableLevel:I

    .line 60
    new-instance v0, Lcom/nuance/swype/util/LogManager$AndroidLog;

    invoke-direct {v0}, Lcom/nuance/swype/util/LogManager$AndroidLog;-><init>()V

    sput-object v0, Lcom/nuance/swype/util/LogManager;->rootLog:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 19
    sget v0, Lcom/nuance/swype/util/LogManager;->loggableLevel:I

    return v0
.end method

.method public static calculateAverage(Ljava/util/List;)Ljava/lang/Long;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 250
    .local v0, "sum":Ljava/lang/Long;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 251
    .local v1, "time":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 252
    goto :goto_a

    .line 253
    .end local v1    # "time":Ljava/lang/Long;
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public static getLog()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/nuance/swype/util/LogManager;->rootLog:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method public static getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;
    .registers 4
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 143
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 144
    :cond_8
    sget-object v0, Lcom/nuance/swype/util/LogManager;->rootLog:Lcom/nuance/swype/util/LogManager$Log;

    .line 146
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/nuance/swype/util/LogManager$AndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/swype/util/LogManager$AndroidLog;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static getTrace()Lcom/nuance/swype/util/LogManager$Trace;
    .registers 2

    .prologue
    .line 261
    sget-object v0, Lcom/nuance/swype/util/LogManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    if-nez v0, :cond_c

    .line 262
    new-instance v0, Lcom/nuance/swype/util/LogManager$Trace;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/swype/util/LogManager$Trace;-><init>(B)V

    sput-object v0, Lcom/nuance/swype/util/LogManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 264
    :cond_c
    sget-object v0, Lcom/nuance/swype/util/LogManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-object v0
.end method
