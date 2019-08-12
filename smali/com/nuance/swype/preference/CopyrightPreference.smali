.class public Lcom/nuance/swype/preference/CopyrightPreference;
.super Landroid/preference/Preference;
.source "CopyrightPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    sget v5, Lcom/nuance/swype/input/R$layout;->copyright:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/preference/CopyrightPreference;->setLayoutResource(I)V

    .line 30
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 32
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/nuance/swype/preference/CopyrightPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 35
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/preference/CopyrightPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 36
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    sget v5, Lcom/nuance/swype/input/R$id;->version:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    .local v0, "buildVersionText":Landroid/widget/TextView;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 38
    const-string v5, " "

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "buildVersionText":Landroid/widget/TextView;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v4

    .line 41
    :catch_0
    move-exception v5

    const/4 v1, 0x0

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
