.class public final enum Lcom/facebook/share/internal/LikeDialogFeature;
.super Ljava/lang/Enum;
.source "LikeDialogFeature.java"

# interfaces
.implements Lcom/facebook/internal/DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/internal/LikeDialogFeature;",
        ">;",
        "Lcom/facebook/internal/DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/LikeDialogFeature;

.field public static final enum LIKE_DIALOG:Lcom/facebook/share/internal/LikeDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/facebook/share/internal/LikeDialogFeature;

    const-string/jumbo v1, "LIKE_DIALOG"

    const v2, 0x133529d

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/share/internal/LikeDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/LikeDialogFeature;->LIKE_DIALOG:Lcom/facebook/share/internal/LikeDialogFeature;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/share/internal/LikeDialogFeature;

    sget-object v1, Lcom/facebook/share/internal/LikeDialogFeature;->LIKE_DIALOG:Lcom/facebook/share/internal/LikeDialogFeature;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/share/internal/LikeDialogFeature;->$VALUES:[Lcom/facebook/share/internal/LikeDialogFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "minVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/facebook/share/internal/LikeDialogFeature;->minVersion:I

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/LikeDialogFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/facebook/share/internal/LikeDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/LikeDialogFeature;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/internal/LikeDialogFeature;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/facebook/share/internal/LikeDialogFeature;->$VALUES:[Lcom/facebook/share/internal/LikeDialogFeature;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/LikeDialogFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/LikeDialogFeature;

    return-object v0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "com.facebook.platform.action.request.LIKE_DIALOG"

    return-object v0
.end method

.method public final getMinVersion()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/facebook/share/internal/LikeDialogFeature;->minVersion:I

    return v0
.end method
