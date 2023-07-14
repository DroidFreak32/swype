.class final enum Lcom/nuance/swype/view/ShadowDrawable$ShadowType;
.super Ljava/lang/Enum;
.source "ShadowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/view/ShadowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ShadowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/view/ShadowDrawable$ShadowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

.field public static final enum SHADOW_DRAWABLE:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

.field public static final enum SHADOW_DYNAMIC:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

.field public static final enum SHADOW_SHADOW_LAYER:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    const-string/jumbo v1, "SHADOW_DRAWABLE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->SHADOW_DRAWABLE:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    .line 76
    new-instance v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    const-string/jumbo v1, "SHADOW_DYNAMIC"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->SHADOW_DYNAMIC:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    .line 77
    new-instance v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    const-string/jumbo v1, "SHADOW_SHADOW_LAYER"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->SHADOW_SHADOW_LAYER:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    sget-object v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->SHADOW_DRAWABLE:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->SHADOW_DYNAMIC:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->SHADOW_SHADOW_LAYER:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->$VALUES:[Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/view/ShadowDrawable$ShadowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/view/ShadowDrawable$ShadowType;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->$VALUES:[Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    invoke-virtual {v0}, [Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    return-object v0
.end method
