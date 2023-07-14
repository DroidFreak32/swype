.class public Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
.super Ljava/lang/Object;
.source "FingerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;
    }
.end annotation


# instance fields
.field public final doublePressTimeout:I

.field public final holdTimeout:I

.field public final isTrackVelocityEnabled:Z

.field moveThreshold:I

.field public final repeatTimeout:I


# direct methods
.method protected constructor <init>(IIIZI)V
    .locals 0
    .param p1, "doublePressTimeout"    # I
    .param p2, "holdTimeout"    # I
    .param p3, "repeatTimeout"    # I
    .param p4, "isTrackVelocityEnabled"    # Z
    .param p5, "moveThreshold"    # I

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->doublePressTimeout:I

    .line 918
    iput p2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->holdTimeout:I

    .line 919
    iput p3, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->repeatTimeout:I

    .line 920
    iput-boolean p4, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->isTrackVelocityEnabled:Z

    .line 921
    iput p5, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->moveThreshold:I

    .line 923
    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 926
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 927
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    .line 928
    .local v5, "moveThreshold":I
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    const/16 v1, 0x15e

    const/16 v2, 0x1f4

    const/16 v3, 0xfa

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;-><init>(IIIZI)V

    return-object v0
.end method
