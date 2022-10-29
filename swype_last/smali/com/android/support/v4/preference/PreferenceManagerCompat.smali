.class public Lcom/android/support/v4/preference/PreferenceManagerCompat;
.super Ljava/lang/Object;
.source "PreferenceManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/android/support/v4/preference/PreferenceManagerCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/support/v4/preference/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dispatchActivityDestroy(Landroid/preference/PreferenceManager;)V
    .registers 6
    .param p0, "manager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 205
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const-string/jumbo v3, "dispatchActivityDestroy"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 206
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 207
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 211
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_16
    return-void

    .line 208
    :catch_17
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/support/v4/preference/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t call PreferenceManager.dispatchActivityDestroy by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method static dispatchActivityResult(Landroid/preference/PreferenceManager;IILandroid/content/Intent;)V
    .registers 11
    .param p0, "manager"    # Landroid/preference/PreferenceManager;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 177
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const-string/jumbo v3, "dispatchActivityResult"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 178
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 179
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 183
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_36
    return-void

    .line 180
    :catch_37
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/support/v4/preference/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t call PreferenceManager.dispatchActivityResult by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method static dispatchActivityStop(Landroid/preference/PreferenceManager;)V
    .registers 6
    .param p0, "manager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 191
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const-string/jumbo v3, "dispatchActivityStop"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 192
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 193
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 197
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_16
    return-void

    .line 194
    :catch_17
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/support/v4/preference/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t call PreferenceManager.dispatchActivityStop by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method static getPreferenceScreen(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;
    .registers 6
    .param p0, "manager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 163
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const-string/jumbo v3, "getPreferenceScreen"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 164
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 165
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 169
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_19
    return-object v2

    .line 166
    :catch_1a
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/support/v4/preference/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t call PreferenceManager.getPreferenceScreen by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v2, 0x0

    goto :goto_19
.end method

.method static inflateFromIntent(Landroid/preference/PreferenceManager;Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .registers 10
    .param p0, "manager"    # Landroid/preference/PreferenceManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 122
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const-string/jumbo v3, "inflateFromIntent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/preference/PreferenceScreen;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 123
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 124
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 129
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_29
    return-object v2

    .line 126
    :catch_2a
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/support/v4/preference/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t call PreferenceManager.inflateFromIntent by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v2, 0x0

    goto :goto_29
.end method

.method static inflateFromResource(Landroid/preference/PreferenceManager;Landroid/app/Activity;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .registers 11
    .param p0, "manager"    # Landroid/preference/PreferenceManager;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resId"    # I
    .param p3, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 146
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const-string/jumbo v3, "inflateFromResource"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/preference/PreferenceScreen;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 147
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 148
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 153
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_35
    return-object v2

    .line 150
    :catch_36
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/support/v4/preference/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t call PreferenceManager.inflateFromResource by reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v2, 0x0

    goto :goto_35
.end method

.method static newInstance$65cee2cb(Landroid/app/Activity;)Landroid/preference/PreferenceManager;
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    :try_start_0
    const-class v2, Landroid/preference/PreferenceManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 58
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/preference/PreferenceManager;>;"
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 59
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceManager;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 63
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/preference/PreferenceManager;>;"
    :goto_2c
    return-object v2

    .line 60
    :catch_2d
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/support/v4/preference/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t call constructor PreferenceManager by reflection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method static setFragment$7b6d5139()V
    .registers 0

    .prologue
    .line 71
    return-void
.end method

.method static setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V
    .registers 9
    .param p0, "manager"    # Landroid/preference/PreferenceManager;
    .param p1, "listener"    # Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;

    .prologue
    .line 81
    :try_start_0
    const-class v3, Landroid/preference/PreferenceManager;

    const-string/jumbo v4, "mOnPreferenceTreeClickListener"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 82
    .local v1, "onPreferenceTreeClickListener":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 83
    if-eqz p1, :cond_2e

    .line 85
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 86
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Lcom/android/support/v4/preference/PreferenceManagerCompat$1;

    invoke-direct {v5, p1}, Lcom/android/support/v4/preference/PreferenceManagerCompat$1;-><init>(Lcom/android/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V

    .line 84
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 96
    .local v2, "proxy":Ljava/lang/Object;
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .end local v1    # "onPreferenceTreeClickListener":Ljava/lang/reflect/Field;
    .end local v2    # "proxy":Ljava/lang/Object;
    :goto_2d
    return-void

    .line 98
    .restart local v1    # "onPreferenceTreeClickListener":Ljava/lang/reflect/Field;
    :cond_2e
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_2d

    .line 100
    .end local v1    # "onPreferenceTreeClickListener":Ljava/lang/reflect/Field;
    :catch_33
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/support/v4/preference/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Couldn\'t set PreferenceManager.mOnPreferenceTreeClickListener by reflection"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method static setPreferences(Landroid/preference/PreferenceManager;Landroid/preference/PreferenceScreen;)Z
    .registers 10
    .param p0, "manager"    # Landroid/preference/PreferenceManager;
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v3, 0x0

    .line 221
    :try_start_1
    const-class v2, Landroid/preference/PreferenceManager;

    const-string/jumbo v4, "setPreferences"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/preference/PreferenceScreen;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 222
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 223
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_27

    move-result v2

    .line 227
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_26
    return v2

    .line 224
    :catch_27
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/support/v4/preference/PreferenceManagerCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Couldn\'t call PreferenceManager.setPreferences by reflection"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 227
    goto :goto_26
.end method
