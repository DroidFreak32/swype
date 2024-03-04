.class public Lcom/nuance/swype/input/LangSwitchAction;
.super Ljava/lang/Object;
.source "LangSwitchAction.java"


# static fields
.field public static final SELECTED_FROM_GESTURE:I = 0x5

.field public static final SELECTED_FROM_IMPLICIT:I = 0x6

.field public static final SELECTED_FROM_KEYBOARD:I = 0x2

.field public static final SELECTED_FROM_LOCALE:I = 0x3

.field public static final SELECTED_FROM_QUICK_TOGGLE:I = 0x4

.field public static final SELECTED_FROM_SETTINGS:I = 0x1

.field public static final SELECTED_FROM_UNSPECIFIED:I

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private isImplicitToggle:Z

.field private lang:Lcom/nuance/swype/input/InputMethods$Language;

.field private languageSwitchSource:I

.field private returnLang:Lcom/nuance/swype/input/InputMethods$Language;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "LangSwitchAction"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/LangSwitchAction;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;I)V
    .locals 1
    .param p1, "next"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "source"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/LangSwitchAction;->languageSwitchSource:I

    .line 61
    iput-object p1, p0, Lcom/nuance/swype/input/LangSwitchAction;->lang:Lcom/nuance/swype/input/InputMethods$Language;

    .line 62
    iput p2, p0, Lcom/nuance/swype/input/LangSwitchAction;->languageSwitchSource:I

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;ZI)V
    .locals 1
    .param p1, "from"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "next"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "isImplicitToggle"    # Z
    .param p4, "source"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/LangSwitchAction;->languageSwitchSource:I

    .line 54
    iput-object p1, p0, Lcom/nuance/swype/input/LangSwitchAction;->returnLang:Lcom/nuance/swype/input/InputMethods$Language;

    .line 55
    iput-object p2, p0, Lcom/nuance/swype/input/LangSwitchAction;->lang:Lcom/nuance/swype/input/InputMethods$Language;

    .line 56
    iput-boolean p3, p0, Lcom/nuance/swype/input/LangSwitchAction;->isImplicitToggle:Z

    .line 57
    iput p4, p0, Lcom/nuance/swype/input/LangSwitchAction;->languageSwitchSource:I

    .line 58
    return-void
.end method


# virtual methods
.method public execute(Lcom/nuance/swype/input/IME;)V
    .locals 4
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 78
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/LangSwitchAction;->lang:Lcom/nuance/swype/input/InputMethods$Language;

    iget v3, p0, Lcom/nuance/swype/input/LangSwitchAction;->languageSwitchSource:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/connect/Connect;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;I)V

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 81
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 82
    .local v0, "im":Lcom/nuance/swype/input/InputMethods;
    iget-object v1, p0, Lcom/nuance/swype/input/LangSwitchAction;->returnLang:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/nuance/swype/input/LangSwitchAction;->lang:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/LangSwitchAction;->returnLang:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/nuance/swype/input/LangSwitchAction;->isImplicitToggle:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 91
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/LangSwitchAction;->lang:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/LangSwitchAction;->returnLang:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/LangSwitchAction;->returnLang:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v1, v1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/LangSwitchAction;->lang:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v1, v1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; implicit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/swype/input/LangSwitchAction;->isImplicitToggle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/LangSwitchAction;->lang:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    goto :goto_0
.end method
