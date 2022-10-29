.class public Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;
.super Ljava/lang/Object;
.source "ThemeTabHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/store/ThemeTabHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentFragmentInfo"
.end annotation


# instance fields
.field private bundleSku:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private fragmentType:I

.field private sourceFragmentType:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->fragmentType:I

    .line 797
    iput v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->sourceFragmentType:I

    .line 801
    return-void
.end method


# virtual methods
.method public getBundleSku()Ljava/lang/String;
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->bundleSku:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceFragmentType()I
    .registers 2

    .prologue
    .line 814
    iget v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->sourceFragmentType:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 818
    iget v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->fragmentType:I

    return v0
.end method

.method public initialize(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "bundleSku"    # Ljava/lang/String;

    .prologue
    .line 804
    iput p1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->fragmentType:I

    .line 805
    iput-object p2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->category:Ljava/lang/String;

    .line 806
    iput-object p3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->bundleSku:Ljava/lang/String;

    .line 807
    return-void
.end method

.method public setSourceFragment(I)V
    .registers 2
    .param p1, "sourceFragment"    # I

    .prologue
    .line 810
    iput p1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->sourceFragmentType:I

    .line 811
    return-void
.end method
