.class public Lcom/nuance/swype/preference/LanguageUpdatePreference;
.super Landroid/preference/Preference;
.source "LanguageUpdatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/preference/LanguageUpdatePreference$2;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;

.field private progressBarContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "LanguageUpdatePreference"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method protected static cancelDownload()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "cancelDownload..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 76
    sget-object v0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onBindView...updateStatus: "

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/nuance/swype/preference/LanguageUpdatePreference$2;->$SwitchMap$com$nuance$swype$input$update$UpdateStatusManager$UpdateStatus:[I

    invoke-virtual {v2}, Lcom/nuance/swype/input/update/UpdateStatusManager$UpdateStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    invoke-virtual {p0, v2}, Lcom/nuance/swype/preference/LanguageUpdatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->progressBarContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :goto_0
    return-void

    .line 79
    :pswitch_0
    sget v0, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/LanguageUpdatePreference;->setSummary(I)V

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->progressBarContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/nuance/swype/preference/LanguageUpdatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->progressBarContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    sget v2, Lcom/nuance/swype/input/R$layout;->preference_language_enable_widget:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/preference/LanguageUpdatePreference;->setWidgetLayoutResource(I)V

    .line 52
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/nuance/swype/input/R$id;->progress_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->progressBarContainer:Landroid/view/View;

    .line 55
    iget-object v2, p0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->progressBarContainer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    sget v2, Lcom/nuance/swype/input/R$id;->progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/nuance/swype/preference/LanguageUpdatePreference;->progressBar:Landroid/widget/ProgressBar;

    .line 58
    sget v2, Lcom/nuance/swype/input/R$id;->cancel_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    .local v0, "cancelButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 60
    new-instance v2, Lcom/nuance/swype/preference/LanguageUpdatePreference$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/preference/LanguageUpdatePreference$1;-><init>(Lcom/nuance/swype/preference/LanguageUpdatePreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_0
    return-object v1
.end method
