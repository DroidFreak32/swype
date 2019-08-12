.class public Lcom/nuance/android/compat/SharedPreferencesEditorCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesEditorCompat.java"


# static fields
.field private static final Editor_apply:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->Editor_apply:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 33
    sget-object v0, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->Editor_apply:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->Editor_apply:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
