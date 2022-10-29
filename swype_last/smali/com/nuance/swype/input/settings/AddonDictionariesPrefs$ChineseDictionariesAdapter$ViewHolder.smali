.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public cancel:Landroid/widget/ImageView;

.field public icon:Landroid/widget/ImageView;

.field public progress:Landroid/widget/ProgressBar;

.field public summary:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$1;

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$ViewHolder;-><init>()V

    return-void
.end method
