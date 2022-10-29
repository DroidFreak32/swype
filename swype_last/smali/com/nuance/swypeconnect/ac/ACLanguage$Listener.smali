.class interface abstract Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V
.end method

.method public abstract onLanguageChange([II)V
.end method

.method public abstract onLocale(Ljava/util/Locale;)V
.end method

.method public abstract onStartInput(Landroid/view/inputmethod/EditorInfo;)V
.end method
