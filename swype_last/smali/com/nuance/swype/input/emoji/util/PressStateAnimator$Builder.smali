.class public Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
.super Ljava/lang/Object;
.source "PressStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/util/PressStateAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

.field private final listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

.field private final params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;Lcom/nuance/swype/input/emoji/util/AnimationState;)V
    .registers 5
    .param p1, "listener"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;
    .param p2, "animationState"    # Lcom/nuance/swype/input/emoji/util/AnimationState;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;-><init>(Lcom/nuance/swype/input/emoji/util/PressStateAnimator$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    .line 91
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

    .line 92
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    .line 93
    return-void
.end method


# virtual methods
.method public create()Lcom/nuance/swype/input/emoji/util/PressStateAnimator;
    .registers 6

    .prologue
    .line 160
    new-instance v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->listener:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;-><init>(Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;Lcom/nuance/swype/input/emoji/util/AnimationState;Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;Lcom/nuance/swype/input/emoji/util/PressStateAnimator$1;)V

    return-object v0
.end method

.method public movePopupBy(II)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    .registers 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-object v1, v1, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->begin:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iget-object v2, v2, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->begin:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v2, p2

    invoke-static {v1, v2}, Lcom/nuance/swype/util/CoordUtils;->newInstance(II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->end:[I

    .line 104
    return-object p0
.end method

.method public movePopupTo(II)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    .registers 5
    .param p1, "xEnd"    # I
    .param p2, "yEnd"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    invoke-static {p1, p2}, Lcom/nuance/swype/util/CoordUtils;->newInstance(II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->end:[I

    .line 110
    return-object p0
.end method

.method public setEnableShortPressPopup(Z)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    .registers 3
    .param p1, "enablePopup"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iput-boolean p1, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->enableShortPressPopup:Z

    .line 157
    return-object p0
.end method

.method public setHorMovementFactor(F)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    .registers 3
    .param p1, "factor"    # F

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iput p1, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->horMovementFactor:F

    .line 142
    return-object p0
.end method

.method public setPopupSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    .registers 3
    .param p1, "springConfig"    # Lcom/facebook/rebound/SpringConfig;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iput-object p1, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->popupSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 152
    return-object p0
.end method

.method public setPressSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    .registers 3
    .param p1, "springConfig"    # Lcom/facebook/rebound/SpringConfig;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iput-object p1, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->pressSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 147
    return-object p0
.end method

.method public setScaleValues(FF)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    .registers 4
    .param p1, "pressScaleAdd"    # F
    .param p2, "popupScaleAdd"    # F

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iput p1, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->pressScaleAdd:F

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iput p2, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->popupScaleAdd:F

    .line 134
    return-object p0
.end method

.method public setSize(II)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iput p1, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->width:I

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    iput p2, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->height:I

    .line 120
    return-object p0
.end method

.method public startAt(II)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    .registers 5
    .param p1, "xBegin"    # I
    .param p2, "yBegin"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->params:Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;

    invoke-static {p1, p2}, Lcom/nuance/swype/util/CoordUtils;->newInstance(II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->begin:[I

    .line 98
    return-object p0
.end method
