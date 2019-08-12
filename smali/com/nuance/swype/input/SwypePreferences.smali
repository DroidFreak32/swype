.class public abstract Lcom/nuance/swype/input/SwypePreferences;
.super Ljava/lang/Object;
.source "SwypePreferences.java"


# static fields
.field private static final SET_MARSHALL_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private final context:Landroid/content/Context;

.field private final res:Landroid/content/res/Resources;

.field private final sp:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nuance/swype/input/SwypePreferences;->context:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->res:Landroid/content/res/Resources;

    .line 25
    iput-object p2, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defval"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultBoolean(I)Z
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getDefaultInt(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getDefaultString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defval"    # F

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defval"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defval"    # J

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defval"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrings(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "defaults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/swype/input/SwypePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 106
    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "defaults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    .end local v0    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object p2
.end method

.method public getUpgradedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defval"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/input/SwypePreferences;->getUpgradedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defval"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 133
    .end local p2    # "defval":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 122
    .restart local p2    # "defval":Ljava/lang/String;
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 124
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 126
    if-nez p3, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 129
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 43
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 39
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 55
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 71
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 63
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 79
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/SwypePreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 88
    return-void
.end method

.method public setStrings(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/SwypePreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
