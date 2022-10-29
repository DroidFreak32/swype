.class public Lcom/nuance/swype/preference/ClassActionPreference;
.super Lcom/nuance/swype/preference/ViewClickPreference;
.source "ClassActionPreference.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/nuance/swype/preference/ClassActionPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/nuance/swype/preference/ClassActionPreference;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/swype/preference/ViewClickPreference;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/preference/ViewClickPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/preference/ViewClickPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/nuance/swype/preference/ViewClickPreference;->onBindView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Lcom/nuance/swype/preference/ClassActionPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 34
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_40

    .line 35
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 36
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/nuance/swype/preference/ClassActionPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "packageName":Ljava/lang/String;
    if-nez v1, :cond_41

    .line 38
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "className":Ljava/lang/String;
    sget-boolean v5, Lcom/nuance/swype/preference/ClassActionPreference;->$assertionsDisabled:Z

    if-nez v5, :cond_27

    if-nez v0, :cond_27

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 40
    :cond_27
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 41
    .local v3, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 43
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 45
    :cond_3d
    invoke-virtual {p0, v3}, Lcom/nuance/swype/preference/ClassActionPreference;->setIntent(Landroid/content/Intent;)V

    .line 50
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "launchIntent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_40
    return-void

    .line 46
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_41
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 47
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
