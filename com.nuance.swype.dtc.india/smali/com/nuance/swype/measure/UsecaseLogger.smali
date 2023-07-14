.class public final Lcom/nuance/swype/measure/UsecaseLogger;
.super Ljava/lang/Object;
.source "UsecaseLogger.java"

# interfaces
.implements Lcom/nuance/swype/measure/UsecaseStopwatch$IUsecaseLogger;


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "UsecaseLogger"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/measure/UsecaseLogger;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 11
    sget-object v0, Lcom/nuance/swype/measure/UsecaseLogger;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-interface {v0, p1}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 12
    return-void
.end method
