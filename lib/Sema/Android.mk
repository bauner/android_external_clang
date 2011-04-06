LOCAL_PATH:= $(call my-dir)

# For the host only
# =====================================================
include $(CLEAR_VARS)
include $(CLEAR_TBLGEN_VARS)

TBLGEN_TABLES :=    \
	AttrList.inc	\
	Attrs.inc	\
	DeclNodes.inc	\
	DiagnosticASTKinds.inc	\
	DiagnosticSemaKinds.inc	\
	DiagnosticParseKinds.inc	\
	DiagnosticCommonKinds.inc	\
	StmtNodes.inc	\
	arm_neon.inc

clang_sema_SRC_FILES :=	\
	AnalysisBasedWarnings.cpp	\
	AttributeList.cpp	\
	CodeCompleteConsumer.cpp	\
	DeclSpec.cpp	\
	IdentifierResolver.cpp	\
	DelayedDiagnostic.cpp \
	JumpDiagnostics.cpp	\
	Sema.cpp	\
	SemaAccess.cpp	\
	SemaAttr.cpp	\
	SemaCXXCast.cpp	\
	SemaCXXScopeSpec.cpp	\
	SemaChecking.cpp	\
	SemaCodeComplete.cpp	\
	SemaDecl.cpp	\
	SemaDeclAttr.cpp	\
	SemaDeclCXX.cpp	\
	SemaDeclObjC.cpp	\
	SemaExceptionSpec.cpp	\
	SemaExpr.cpp	\
	SemaExprCXX.cpp	\
	SemaExprObjC.cpp	\
	SemaInit.cpp	\
	SemaLookup.cpp	\
	SemaObjCProperty.cpp	\
	SemaOverload.cpp	\
	SemaStmt.cpp	\
	SemaTemplate.cpp	\
	SemaTemplateDeduction.cpp	\
	SemaTemplateInstantiate.cpp	\
	SemaTemplateInstantiateDecl.cpp	\
	SemaTemplateVariadic.cpp	\
	SemaType.cpp	\
	TargetAttributesSema.cpp

LOCAL_SRC_FILES := $(clang_sema_SRC_FILES)

LOCAL_MODULE:= libclangSema
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_TAGS := optional

include $(CLANG_HOST_BUILD_MK)
include $(CLANG_TBLGEN_RULES_MK)
include $(BUILD_HOST_STATIC_LIBRARY)
