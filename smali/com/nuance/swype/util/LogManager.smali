.class public final Lcom/nuance/swype/util/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/util/LogManager$Trace;,
        Lcom/nuance/swype/util/LogManager$Log;
    }
.end annotation


# static fields
.field protected static volatile loggableLevel:I

.field private static final rootLog:Lcom/nuance/swype/util/LogManager$Log;

.field private static trace:Lcom/nuance/swype/util/LogManager$Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x4

    sput v0, Lcom/nuance/swype/util/LogManager;->loggableLevel:I

    .line 60
    new-instance v0, Lcom/nuance/swype/util/LogManager$Log;

    invoke-direct {v0}, Lcom/nuance/swype/util/LogManager$Log;-><init>()V

    sput-object v0, Lcom/nuance/swype/util/LogManager;->rootLog:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public static calculateAverage(Ljava/util/List;)Ljava/lang/Long;
    .locals 8
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
    .line 322
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 323
    .local v1, "sum":Ljava/lang/Long;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 324
    .local v2, "time":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 325
    goto :goto_0

    .line 326
    .end local v2    # "time":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v6, v3

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3
.end method

.method public static getLog()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/nuance/swype/util/LogManager;->rootLog:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method public static getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;
    .locals 3
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 164
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    sget-object v0, Lcom/nuance/swype/util/LogManager;->rootLog:Lcom/nuance/swype/util/LogManager$Log;

    .line 167
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTrace()Lcom/nuance/swype/util/LogManager$Trace;
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/nuance/swype/util/LogManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lcom/nuance/swype/util/LogManager$Trace;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/swype/util/LogManager$Trace;-><init>(B)V

    sput-object v0, Lcom/nuance/swype/util/LogManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 337
    :cond_0
    sget-object v0, Lcom/nuance/swype/util/LogManager;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-object v0
.end method
