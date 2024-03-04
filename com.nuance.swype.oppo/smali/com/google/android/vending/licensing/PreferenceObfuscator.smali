.class public final Lcom/google/android/vending/licensing/PreferenceObfuscator;
.super Ljava/lang/Object;
.source "PreferenceObfuscator.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "PreferenceObfuscator"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/vending/licensing/Obfuscator;)V
    .locals 1
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "o"    # Lcom/google/android/vending/licensing/Obfuscator;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    .line 43
    iput-object p2, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 45
    return-void
.end method


# virtual methods
.method public final commit()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 78
    :cond_0
    return-void
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v2, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    invoke-interface {v2, v1, p1}, Lcom/google/android/vending/licensing/Obfuscator;->unobfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/vending/licensing/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 63
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    sget-object v2, Lcom/google/android/vending/licensing/PreferenceObfuscator;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Validation error while reading preference: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 64
    :cond_0
    move-object v0, p2

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    invoke-interface {v1, p2, p1}, Lcom/google/android/vending/licensing/Obfuscator;->obfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "obfuscatedValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    return-void
.end method
