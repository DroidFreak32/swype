.class public final Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
.super Ljava/lang/Object;
.source "StartupSequenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/StartupSequenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenInfo"
.end annotation


# instance fields
.field public nextScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

.field public omitIfRussia:Z

.field public screenName:Ljava/lang/String;

.field public showWarning:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "showWarning"    # Z
    .param p3, "omitIfRussia"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->nextScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .line 49
    iput-boolean p2, p0, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->showWarning:Z

    .line 50
    iput-boolean p3, p0, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->omitIfRussia:Z

    .line 51
    return-void
.end method
