Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EE51FC185
	for <lists+kexec@lfdr.de>; Wed, 17 Jun 2020 00:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVEgSxHFTpoXEua+8dyXH6n6IW5ciNoQV980DoaVN7E=; b=E8kt2GT4Gt9Q1w
	Nq4RPBr3u/c89qbAQIZAqiyJHQPPmmSpsSmxt8sbe6a4+fLzB02iu4wFVhLJnNuxl/6Io646owNo1
	/FfthVJfTf3AwAtPAJtY8NobkrFVE4BkomQ07P5Ujii7rqnew6ZrhoTL8k4ZZgHosDzSapzUSaUyj
	+qNtI2CViobn5SMnWgVkc8mI4/CHz7k+hE4y/dGwD/1Posh1bBbvVsYayT9Gp+0pKn5gGl+M8MxOW
	G28QWZ0UVIMNPTbvSYptIKNfUETiP8+OFmN1dqIfwXoFg9l21JhuVG3NaqdgoIb1rcG0qgdstSKIP
	2pvcIxLxVW9OEPS15oqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlK1i-0006hd-GY; Tue, 16 Jun 2020 22:25:54 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlK1f-0006gz-HU
 for kexec@lists.infradead.org; Tue, 16 Jun 2020 22:25:52 +0000
Received: by mail-qk1-f195.google.com with SMTP id q2so258808qkb.2
 for <kexec@lists.infradead.org>; Tue, 16 Jun 2020 15:25:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VcKfZlE4WkUhVaivLHqicBLfv47GDp8cYmEaB3V/yXI=;
 b=tzpuDdCshpQeIvkj7NA8/0RBEFL6f8WIn9+vb1oQcvniNT6Zr3WF+nlzjRt2EMAuys
 io9hD2Fn48TXA/jbENTII6TFmEmIfIrPa0r3z0cmmHtCE9yWPAg5FrGtoNx1TGPfd49y
 C+WvyYlq1i5BTNzeZ1OoPexAIgW82ylfKepdF0mW8Y4CZRuTNzSaLy6Hxd50Yr+0wy70
 Ph7sT9hiPP1gxjCodfwwTz1cr2GjwEBORxe+HbJp2jtvbK5rLCdf4NXzCRwwjGkZGU5S
 I6Ob7CxtUiAJ4Ghf2dETPZkqNKYuc33qHfHPeFPJTzAjIcZZ724c7f44a2Q7Qtr+H/Wg
 +b2w==
X-Gm-Message-State: AOAM530bXxt763oMkjhmfZK3llXq1csgMGWM8zfFlp2mT4PYc9rctG6K
 C1tgBi1R8yFTvuDcE5p0nbk=
X-Google-Smtp-Source: ABdhPJzFBcXfx4S8pNUEkIHwipaB95eGAuUAwTxzAUh2H7g200UUY9Jq7+mPMqFlgP6VAR8d66371Q==
X-Received: by 2002:a37:4753:: with SMTP id u80mr22286270qka.178.1592346350157; 
 Tue, 16 Jun 2020 15:25:50 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id p13sm15290473qke.135.2020.06.16.15.25.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 15:25:49 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: x86@kernel.org,
	kexec@lists.infradead.org
Subject: [PATCH] x86/purgatory: Add -fno-stack-protector
Date: Tue, 16 Jun 2020 18:25:47 -0400
Message-Id: <20200616222547.1979233-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAEJqkggDJEC4W9V6ijmPoE0-soKE7zBUWUiDLdCZArEsDo9vrQ@mail.gmail.com>
References: <CAEJqkggDJEC4W9V6ijmPoE0-soKE7zBUWUiDLdCZArEsDo9vrQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_152551_577964_ABA1504E 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Borislav Petkov <bp@alien8.de>, Hans de Goede <hdegoede@redhat.com>,
 Gabriel C <nix.or.die@googlemail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

The purgatory Makefile removes -fstack-protector options if they were
configured in, but does not currently add -fno-stack-protector.

If gcc was configured with the --enable-default-ssp configure option,
this results in the stack protector still being enabled for the
purgatory (absent distro-specific specs files that might disable it
again for freestanding compilations), if the main kernel is being
compiled with stack protection enabled (if it's disabled for the main
kernel, the top-level Makefile will add -fno-stack-protector).

This will break the build since commit
  e4160b2e4b02 ("x86/purgatory: Fail the build if purgatory.ro has missing symbols")
and prior to that would have caused runtime failure when trying to use
kexec.

Explicitly add -fno-stack-protector to avoid this, as done in other
Makefiles that need to disable the stack protector.

Reported-by: Gabriel C <nix.or.die@googlemail.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/purgatory/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index b04e6e72a592..088bd764e0b7 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -34,6 +34,7 @@ KCOV_INSTRUMENT := n
 PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
 PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss
 PURGATORY_CFLAGS += $(DISABLE_STACKLEAK_PLUGIN) -DDISABLE_BRANCH_PROFILING
+PURGATORY_CFLAGS += $(call cc-option,-fno-stack-protector)
 
 # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
 # in turn leaves some undefined symbols like __fentry__ in purgatory and not
-- 
2.26.2


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
