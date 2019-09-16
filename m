Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF3BB337E
	for <lists+kexec@lfdr.de>; Mon, 16 Sep 2019 04:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a0nHq5Ltikwhl8QkHQn/Ycqm2l9aoQFv+WC2yGYP9f0=; b=HfO
	8Hk3HW8ICA3w7NCaYh+21I5cNuNLp8Aj4PC5JJBPvr+uPiCGD2qtX0DqOIN6lYWQD/wB2Vfg1xwgK
	2dI+fv7lh683AjELLPUP0XDbTWEViQl2tkeWaL3XnChpGOr7OsVbsqAeE8f0alLHlF3wPwO1KD28S
	KBo641XdUsfkiJLHmD+zynied/kiUPCRZ98SZfI1QncUL+BLELhdl1vXGML9XegX+g4ommFaREy3C
	xPxj8CemDO3l4iWpXWyOZDg78DWSTOOgZvpALw6ORE8U2LTvZ2BW+Q3fwuVYUnMF8n1owPEwdcb5f
	VxfKYRTATsryXfHsSLRQYGcm4wDguWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9h4o-00036R-4q; Mon, 16 Sep 2019 02:49:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9h4h-000364-KP
 for kexec@lists.infradead.org; Mon, 16 Sep 2019 02:49:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id bd8so16185276plb.6
 for <kexec@lists.infradead.org>; Sun, 15 Sep 2019 19:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=OWhPZmeLV0gT6q1ixl69Ql1KOe/luKLyfI6eTBpC558=;
 b=nUAKqL6lKfsc5R9M7lzvekk+fvkfwM8VMuq7Wpnzqla6q6g5WHkeD0h+fPdoq+dJEC
 Cuv1GLrdUcWHV58zWqDJm71eFnFTdEXBxPn+qcCoWZ995JIAPiEor1Pbbcc3pOmIVaAQ
 QlZ5p9uHnBcIIkmBVFnTZZVZZBPl0TE/lkh2BhkFu+PGqkvbWlSNKvH8Pzjh6+Ysi1fa
 P97RwZZXpGfmSP488RVaFe4fsAjFbzdlVEIaviBvzmqfhwbzBOuqGaNMXoAZgbnHOyZz
 OI0gQzVZhnqWUA98zIct4b0P2Nf6wy7l8SpY7aFEEkcUt7yaieCvhLHAbig/EMOkVlEU
 +mdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OWhPZmeLV0gT6q1ixl69Ql1KOe/luKLyfI6eTBpC558=;
 b=s8nqv9gJBBfYqDqRQMWcOTGBaQ7dkipR+QiU0WMy2Xn65EXSJKXv9GGOWykXn4v3nj
 Z1GLj5jYPtA6UwMCwck0lQfKhns8KNelETBIqjVhNM1nta/CJMmciLBEOgGLB5YT4Qm2
 PBmpHiBh2DMuE5vwN8N7CvWJ9ryZ7lMQnnMsyDfSJLyWGanSfm5f2LTSmTWG8dUczYP3
 Xwu3iiaIlNP/qYlMA/UvpemPCkYugq9iTzcm2WBBjPWKZeRW0Ba937gHF0n8ca7G2NhA
 b2CpnAyEbBuX2l4Y7RPhAmWozRVqJokXjWFfsvB6+bVjtyPNUddUGRBW0BAjMbru3n12
 Z2ew==
X-Gm-Message-State: APjAAAWsk4OlG0C22uf80a7bI7oCi7/P7E6udne/SxVeNDCRTKTkz3aN
 skWWqTY+mGp3TQwUv7pTMLH2hZAh
X-Google-Smtp-Source: APXvYqw82XssSkG61xgsmgAMpQhDZMYtphiDl6BGdEy4jDS7OyghdpSb74y71luEADJB8VplVoZ14w==
X-Received: by 2002:a17:902:36e:: with SMTP id
 101mr58448484pld.51.1568602150500; 
 Sun, 15 Sep 2019 19:49:10 -0700 (PDT)
Received: from pek-qwang2-d1.wrs.com (unknown-178-22.windriver.com.
 [147.11.178.22])
 by smtp.gmail.com with ESMTPSA id e21sm217190pfd.149.2019.09.15.19.49.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 19:49:09 -0700 (PDT)
From: quanyang.w@gmail.com
To: horms@verge.net.au
Subject: [PATCH] kexec/arm: undefine __NR_kexec_file_load for arm
Date: Mon, 16 Sep 2019 10:49:05 +0800
Message-Id: <20190916024905.3100-1-quanyang.w@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_194911_698205_227660C5 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (quanyang.w[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: kexec@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Quanyang Wang <quanyang.wang@windriver.com>

In the kernel upstream commit 4ab65ba7a5cb
("ARM: add kexec_file_load system call number"),
__NR_kexec_file_load for arm has been defined to be 401.
This results that even if kexec_file_load isn't implemented
for arm but the function is_kexec_file_load_implemented()
will still return true. So undef __NR_kexec_file_load for
arm architecture.

Signed-off-by: Quanyang Wang <quanyang.wang@windriver.com>
---
 kexec/kexec-syscall.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kexec/kexec-syscall.h b/kexec/kexec-syscall.h
index dac1c1f..92d51d3 100644
--- a/kexec/kexec-syscall.h
+++ b/kexec/kexec-syscall.h
@@ -56,6 +56,10 @@
 #endif
 #endif /*ifndef __NR_kexec_load*/
 
+#ifdef __arm__
+#undef __NR_kexec_file_load
+#endif
+
 #ifndef __NR_kexec_file_load
 
 #ifdef __x86_64__
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
