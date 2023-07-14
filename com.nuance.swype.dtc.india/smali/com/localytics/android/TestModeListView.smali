.class public final Lcom/localytics/android/TestModeListView;
.super Landroid/app/DialogFragment;
.source "TestModeListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/TestModeListView$CancelItemAdapter;,
        Lcom/localytics/android/TestModeListView$MenuItemAdapter;,
        Lcom/localytics/android/TestModeListView$MenuDialog;,
        Lcom/localytics/android/TestModeListView$TestModeDialog;
    }
.end annotation


# static fields
.field static final TEST_MODE_LIST_TAG:Ljava/lang/String; = "marketing_test_mode_list"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/localytics/android/MarketingCallable;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/localytics/android/TestModeListView;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    return-void
.end method

.method static synthetic access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/TestModeListView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/localytics/android/TestModeListView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/TestModeListView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/localytics/android/TestModeListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/localytics/android/TestModeListView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/TestModeListView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/localytics/android/TestModeListView;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static newInstance()Lcom/localytics/android/TestModeListView;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/localytics/android/TestModeListView;

    invoke-direct {v0}, Lcom/localytics/android/TestModeListView;-><init>()V

    .line 76
    .local v0, "fragment":Lcom/localytics/android/TestModeListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/localytics/android/TestModeListView;->setRetainInstance(Z)V

    .line 77
    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 160
    const-string/jumbo v0, "[TestModeListView]: onActivityCreated"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 161
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 162
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 125
    const-string/jumbo v0, "[TestModeListView]: onAttach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 127
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const-string/jumbo v0, "[TestModeListView]: onCreate"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 140
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    const-string/jumbo v0, "[TestModeListView]: onCreateDialog"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 147
    new-instance v0, Lcom/localytics/android/TestModeListView$TestModeDialog;

    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x103000b

    invoke-direct {v0, p0, v1, v2}, Lcom/localytics/android/TestModeListView$TestModeDialog;-><init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;I)V

    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const-string/jumbo v0, "[TestModeListView]: onCreateView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "[TestModeListView]: onDestroy"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 112
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 113
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .prologue
    .line 188
    const-string/jumbo v0, "[TestModeListView]: onDestroyView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 189
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 190
    return-void
.end method

.method public final onDetach()V
    .locals 1

    .prologue
    .line 132
    const-string/jumbo v0, "[TestModeListView]: onDetach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 134
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 153
    const-string/jumbo v0, "[TestModeListView]: onDismiss"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 154
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 155
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "[TestModeListView]: onPause"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 105
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 106
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "[TestModeListView]: onResume"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 98
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 99
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 174
    const-string/jumbo v0, "[TestModeListView]: onSaveInstanceState"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 175
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 167
    const-string/jumbo v0, "[TestModeListView]: onStart"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 168
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 169
    return-void
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "[TestModeListView]: onStop"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 182
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 183
    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const-string/jumbo v0, "[TestModeListView]: onViewStateRestored"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/localytics/android/TestModeListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 195
    return-void
.end method

.method public final setCallbacks(Ljava/util/Map;)Lcom/localytics/android/TestModeListView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/localytics/android/MarketingCallable;",
            ">;)",
            "Lcom/localytics/android/TestModeListView;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "callbacks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
    iput-object p1, p0, Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;

    .line 200
    return-object p0
.end method

.method public final show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/localytics/android/TestModeListView;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 120
    return-void
.end method
