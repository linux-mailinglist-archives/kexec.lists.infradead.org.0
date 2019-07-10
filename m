Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683826485B
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 16:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rXKcSc802hqv2YY1kKo9Vhecou8UgYkSES1m0LEeINg=; b=VD8WBB6J4H36id
	BGhnzD94slnmKZ0aX3qWNkNZaPH8lVS63FJri/bmjZC2zlDe2ztU0QSmr0GhXdNuqBz20kyc+fXqn
	y/43nzPNzLMKKLictPjVS7+kdoI5fRSLQ4Z9Ij1UuY3gOsnVuvyyYfeGdTCv/KLU8vQ7yo/41/V8g
	PtrUAbY5gkZi1TdVSIh7KG9ljpGXs4sl+KANJNz9NQaxIaRoLQxHO6VW6x2nOuDyJzXIElsx/uoFm
	5OtM9VqaesB11jdd4qCQ+MHmFLCz40VzCDIt5p3O5GwomQNI1AbgvKDOlg2kWs+sirfNNDYe3teiX
	6xyl9mcufrmTRZxaGU8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDbv-0007w2-Hq; Wed, 10 Jul 2019 14:30:19 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDbr-0007te-QW
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 14:30:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From;
 bh=hQBC/hvq+BCaNtDhw4z/VJLTgPoTPP4x+PgvCWk6Ysg=; b=qFUgm1H6jOaYHyIt4RRMSIrSjR
 0FVZYXa39xxE0VJyJ0wqivCtnrKz2O2gkSMZ/ayWJcTVDo5u0O5Kco/M3bSPHP/d/SwMT2SglBWXk
 5sCzKrJRsmGebHlFnra561fre3XR08lPpaDsbBAmQlzNEcc1Ydf++r2j9v6J9NhxRR6g=;
Received: from [134.3.44.134] (helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hlDbp-0004hm-EO; Wed, 10 Jul 2019 16:30:13 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v3 0/7] kexec: add generic support for elf kernel images
Date: Wed, 10 Jul 2019 16:29:37 +0200
Message-Id: <20190710142944.2774-1-svens@stackframe.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_073016_032340_EE5DF17C 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sven Schnelle <svens@stackframe.org>, deller@gmx.de,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi List,

this is the same changeset as v2, but (hopefully) with git format-patch -C.

Changes to v2:
 - use git format-patch -C

Changes to v1:
 - split up patch into smaller pieces
 - rebase onto powerpc/next
 - remove unused variable in kexec_elf_load()

Changes to RFC version:
 - remove unused Elf_Rel macro
 - remove section header parsing
 - remove PURGATORY_STACK_SIZE
 - change order of elf_*_to_cpu() functions
 - remove elf_addr_to_cpu macro

Sven Schnelle (7):
  kexec: add KEXEC_ELF
  kexec_elf: change order of elf_*_to_cpu() functions
  kexec_elf: remove parsing of section headers
  kexec_elf: remove PURGATORY_STACK_SIZE
  kexec_elf: remove elf_addr_to_cpu macro
  kexec_elf: remove Elf_Rel macro
  kexec_elf: remove unused variable in kexec_elf_load()

 arch/Kconfig                       |   3 +
 arch/powerpc/Kconfig               |   1 +
 arch/powerpc/kernel/kexec_elf_64.c | 551 +----------------------------
 include/linux/kexec.h              |  23 ++
 kernel/Makefile                    |   1 +
 kernel/kexec_elf.c                 | 389 ++++++++++++++++++++
 6 files changed, 427 insertions(+), 541 deletions(-)
 create mode 100644 kernel/kexec_elf.c

-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
