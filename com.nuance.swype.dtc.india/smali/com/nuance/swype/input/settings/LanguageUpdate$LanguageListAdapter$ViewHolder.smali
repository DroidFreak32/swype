.class Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LanguageUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public cancel:Landroid/widget/ImageView;

.field public cancelListener:Landroid/view/View$OnClickListener;

.field public icon:Landroid/widget/ImageView;

.field public languageId:I

.field public previousStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field public progressBar:Landroid/widget/ProgressBar;

.field public summary:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdate$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate$1;

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;-><init>()V

    return-void
.end method
