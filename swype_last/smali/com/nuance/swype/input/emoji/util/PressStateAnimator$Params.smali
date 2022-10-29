.class Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;
.super Ljava/lang/Object;
.source "PressStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/util/PressStateAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# static fields
.field private static final defaultSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private static final defaultpopupSpringConfig:Lcom/facebook/rebound/SpringConfig;


# instance fields
.field public begin:[I

.field public enableShortPressPopup:Z

.field public end:[I

.field public height:I

.field public horMovementFactor:F

.field public popupScaleAdd:F

.field public popupSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field public pressScaleAdd:F

.field public pressSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 33
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 34
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->defaultSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 37
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    const-wide/high16 v2, 0x4017000000000000L    # 5.75

    .line 38
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->defaultpopupSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->pressScaleAdd:F

    .line 44
    iput v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->popupScaleAdd:F

    .line 47
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->horMovementFactor:F

    .line 49
    sget-object v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->defaultSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->pressSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 51
    sget-object v0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->defaultpopupSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->popupSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;->enableShortPressPopup:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/emoji/util/PressStateAnimator$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator$1;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Params;-><init>()V

    return-void
.end method
