.class Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;
.super Ljava/lang/Object;
.source "ThemesCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# instance fields
.field public final image:Lcom/nuance/swype/widget/LoadingImageView;

.field public final lockIcon:Landroid/widget/ImageView;

.field public final name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/widget/LoadingImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "image"    # Lcom/nuance/swype/widget/LoadingImageView;
    .param p2, "name"    # Landroid/widget/TextView;
    .param p3, "lockIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    .line 439
    iput-object p2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->name:Landroid/widget/TextView;

    .line 440
    iput-object p3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->lockIcon:Landroid/widget/ImageView;

    .line 441
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/widget/LoadingImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/nuance/swype/input/settings/ThemesCategory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/widget/LoadingImageView;
    .param p2, "x1"    # Landroid/widget/TextView;
    .param p3, "x2"    # Landroid/widget/ImageView;
    .param p4, "x3"    # Lcom/nuance/swype/input/settings/ThemesCategory$1;

    .prologue
    .line 431
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;-><init>(Lcom/nuance/swype/widget/LoadingImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void
.end method
