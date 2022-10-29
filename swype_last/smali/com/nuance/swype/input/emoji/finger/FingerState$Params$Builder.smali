.class public Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;
.super Ljava/lang/Object;
.source "FingerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private doublePressTimeout:I

.field private holdTimeout:I

.field private isTrackVelocityEnabled:Z

.field private moveThreshold:I

.field private repeatTimeout:I


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState$Params;)V
    .registers 3
    .param p1, "params"    # Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    .prologue
    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    iget v0, p1, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->doublePressTimeout:I

    iput v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->doublePressTimeout:I

    .line 882
    iget v0, p1, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->holdTimeout:I

    iput v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->holdTimeout:I

    .line 883
    iget v0, p1, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->repeatTimeout:I

    iput v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->repeatTimeout:I

    .line 884
    iget-boolean v0, p1, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->isTrackVelocityEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->isTrackVelocityEnabled:Z

    .line 885
    iget v0, p1, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->moveThreshold:I

    iput v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->moveThreshold:I

    .line 886
    return-void
.end method


# virtual methods
.method public build()Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    .registers 7

    .prologue
    .line 889
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    iget v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->doublePressTimeout:I

    iget v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->holdTimeout:I

    iget v3, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->repeatTimeout:I

    iget-boolean v4, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->isTrackVelocityEnabled:Z

    iget v5, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->moveThreshold:I

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;-><init>(IIIZI)V

    return-object v0
.end method

.method public setDoublePressTimeout(I)Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;
    .registers 2
    .param p1, "val"    # I

    .prologue
    .line 895
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->doublePressTimeout:I

    .line 896
    return-object p0
.end method

.method public setHoldTimeout(I)Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;
    .registers 2
    .param p1, "val"    # I

    .prologue
    .line 900
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->holdTimeout:I

    .line 901
    return-object p0
.end method

.method public setRepeatTimeout(I)Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;
    .registers 2
    .param p1, "val"    # I

    .prologue
    .line 905
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->repeatTimeout:I

    .line 906
    return-object p0
.end method

.method public setTrackVelocity(Z)Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;
    .registers 2
    .param p1, "val"    # Z

    .prologue
    .line 910
    iput-boolean p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->isTrackVelocityEnabled:Z

    .line 911
    return-object p0
.end method
