.class final Lcom/android/support/v4/preference/PreferenceManagerCompat$1;
.super Ljava/lang/Object;
.source "PreferenceManagerCompat.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/v4/preference/PreferenceManagerCompat;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;


# direct methods
.method constructor <init>(Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/support/v4/preference/PreferenceManagerCompat$1;->val$listener:Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 89
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreferenceTreeClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 90
    iget-object v2, p0, Lcom/android/support/v4/preference/PreferenceManagerCompat$1;->val$listener:Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/preference/Preference;

    invoke-interface {v2, v0, v1}, Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 92
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
