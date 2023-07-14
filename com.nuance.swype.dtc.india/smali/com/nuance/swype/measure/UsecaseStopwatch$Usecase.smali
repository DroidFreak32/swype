.class public final Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;
.super Ljava/lang/Object;
.source "UsecaseStopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/measure/UsecaseStopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Usecase"
.end annotation


# instance fields
.field private mDetails:Ljava/lang/String;

.field mElapsedTime:J

.field mEndTime:J

.field mName:Ljava/lang/String;

.field public mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "details"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;->mDetails:Ljava/lang/String;

    .line 52
    return-void
.end method
