.class final Lcom/nuance/swype/preference/LanguageUpdatePreference$1;
.super Ljava/lang/Object;
.source "LanguageUpdatePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/preference/LanguageUpdatePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/preference/LanguageUpdatePreference;


# direct methods
.method constructor <init>(Lcom/nuance/swype/preference/LanguageUpdatePreference;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nuance/swype/preference/LanguageUpdatePreference$1;->this$0:Lcom/nuance/swype/preference/LanguageUpdatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguageUpdatePreference$1;->this$0:Lcom/nuance/swype/preference/LanguageUpdatePreference;

    invoke-static {}, Lcom/nuance/swype/preference/LanguageUpdatePreference;->cancelDownload()V

    .line 65
    return-void
.end method
