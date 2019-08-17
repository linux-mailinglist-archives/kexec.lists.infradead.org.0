Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D8F90C32
	for <lists+kexec@lfdr.de>; Sat, 17 Aug 2019 04:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q5V9RpwHVbabPKUqLCHOSjWl1hZk9fnJPx6fdvqhcUk=; b=kMMqrUwU3UwujH
	r+rVvsQxHe2913M/KA3+Qp0TaoR+Y94pygLnQIdKEMhcy3hd8/sfSIMvSCtjMsSlpdMpjlb/ej8we
	E5WJmgmTRtys9RgrSTogaGNo62k4jX+m//6VK5lPOPkh1QO8TRyZNYhuNK3pSFvW6yiU4pv0AHv4t
	6l5TiQ4UEZytXo271GkRrgMCKw//aG0ERNRUKDNXKjcN9mQkuYL6NyPYDCbsPtvwQrRSk/Y4PGMv3
	5AXso2yEQ1IKwQzjhpk1+NPChEOjZfatDLRedKTi0NJt3ZH0qFJ1nzv/Rh/0NP2XzzkIeFECEqnt2
	UXd1q3zjsd0jBrxTK0aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyojm-0002RD-Gj; Sat, 17 Aug 2019 02:46:38 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyoji-0002PM-5z
 for kexec@lists.infradead.org; Sat, 17 Aug 2019 02:46:36 +0000
Received: by mail-qk1-x743.google.com with SMTP id w18so5649214qki.0
 for <kexec@lists.infradead.org>; Fri, 16 Aug 2019 19:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p98dmgBDeDcssd4yKsWE/iQqs5p9wP/9+OXRV1ENewU=;
 b=JDS9LlpV2ta9byDzMY6b9v39r4r4effVrLjzxfOMxfazK25Y7wTPyhsbXZ66QpIJUP
 HcGNwuH3KpQVzNhgJ2NNBfm5jg8IhCzp+ffvV+Tc9K2hEPOrg0Kp0/28WE0CWLNhifxT
 yoJeW3JhBjArtLdX6XkSvzvEyxm8fdUp9hiaD4zeWviKaDpetWIY4AdemrlQA3Z97re2
 i/qBSDGjjETysQY9urMcD0rH1/EVNndFeiorcfXvA+yr7Dy6VTA65yXhPAXHqX6ip7iz
 LKOgTkMRtHG5FVjALunMYIuDqiBZBonlVu3APly7gtxaYleUcH+TGcvRZwHxAAu/abCa
 VPiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p98dmgBDeDcssd4yKsWE/iQqs5p9wP/9+OXRV1ENewU=;
 b=r/AxOaDWn9Bsl2DYV/r8SjkGzpv85T3F3EJmpQNiJt60IetY0dM8Y/v0SVVwWWwnw+
 TE7UL5mKhSjqZvfz6ziVXO7pQ2essfiRNzdaWl9USoM45lfqXl/Mr2NoCvuGd56hB7JU
 gyUsTj4ikcihHHjOW5EGI/kOwZ8UBhm9ZYUixULFnzrMPbH1Vjvrw+FxoE1BI25JEDYh
 YV28wQ/gIvkRGWEf+cIKc0bs2TGre+mP7KQ+8iogw/tEb6ighOVKaLdxtstXaXjh2FG2
 yJO2Fs7gcnnUva3gZkdRnKEj2cl/PomUzgBVcLuGjGn9hHFSQlurtu/8oZZtoD7AS3IP
 qiAQ==
X-Gm-Message-State: APjAAAW2eQ8L5ons5F38leOl1LE91FI+OHGYCfDTR1jIsSF542KJzbzE
 T2uCLwL5WwiaBFGobkyeVw7+Lg==
X-Google-Smtp-Source: APXvYqxk6U1QbP7pDBIw3UpMgdwmknnD6IQo5oeUJswdhs4UX5w4SKba4s8Bv/AQr8d6aSCLhUMxoA==
X-Received: by 2002:ae9:e707:: with SMTP id m7mr11883927qka.50.1566009991502; 
 Fri, 16 Aug 2019 19:46:31 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:30 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 00/14] arm64: MMU enabled kexec relocation
Date: Fri, 16 Aug 2019 22:46:15 -0400
Message-Id: <20190817024629.26611-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194634_302144_76F621A0 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Changelog:
v2:
	- Fixed hibernate bug reported by James Morse
	- Addressed comments from James Morse:
	  * More incremental changes to trans_table
	  * Removed TRANS_FORCEMAP
	  * Added kexec reboot data for image with 380M in size.

Enable MMU during kexec relocation in order to improve reboot performance.

If kexec functionality is used for a fast system update, with a minimal
downtime, the relocation of kernel + initramfs takes a significant portion
of reboot.

The reason for slow relocation is because it is done without MMU, and thus
not benefiting from D-Cache.

Performance data
----------------
For this experiment, the size of kernel plus initramfs is small, only 25M.
If initramfs was larger, than the improvements would be greater, as time
spent in relocation is proportional to the size of relocation.

Previously:
kernel shutdown	0.022131328s
relocation	0.440510736s
kernel startup	0.294706768s

Relocation was taking: 58.2% of reboot time

Now:
kernel shutdown	0.032066576s
relocation	0.022158152s
kernel startup	0.296055880s

Now: Relocation takes 6.3% of reboot time

Total reboot is x2.16 times faster.

With bigger userland (fitImage 380M), the reboot time is improved by 3.57s,
and is reduced from 3.9s down to 0.33s

Previous approaches and discussions
-----------------------------------
https://lore.kernel.org/lkml/20190801152439.11363-1-pasha.tatashin@soleen.com/
version 1 of this series

https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com
reserve space for kexec to avoid relocation, involves changes to generic code
to optimize a problem that exists on arm64 only:

https://lore.kernel.org/lkml/20190716165641.6990-1-pasha.tatashin@soleen.com
The first attempt to enable MMU, some bugs that prevented performance
improvement. The page tables unnecessary configured idmap for the whole
physical space.

https://lore.kernel.org/lkml/20190731153857.4045-1-pasha.tatashin@soleen.com
No linear copy, bug with EL2 reboots.

Pavel Tatashin (14):
  kexec: quiet down kexec reboot
  arm64, hibernate: create_safe_exec_page cleanup
  arm64, hibernate: add trans_table public functions
  arm64, hibernate: move page handling function to new trans_table.c
  arm64, trans_table: make trans_table_map_page generic
  arm64, trans_table: add trans_table_create_empty
  arm64, trans_table: adjust trans_table_create_copy interface
  arm64, trans_table: add PUD_SECT_RDONLY
  arm64, trans_table: complete generalization of trans_tables
  kexec: add machine_kexec_post_load()
  arm64, kexec: move relocation function setup and clean up
  arm64, kexec: add expandable argument to relocation function
  arm64, kexec: configure transitional page table for kexec
  arm64, kexec: enable MMU during kexec relocation

 arch/arm64/Kconfig                     |   4 +
 arch/arm64/include/asm/kexec.h         |  51 ++++-
 arch/arm64/include/asm/pgtable-hwdef.h |   1 +
 arch/arm64/include/asm/trans_table.h   |  64 ++++++
 arch/arm64/kernel/asm-offsets.c        |  14 ++
 arch/arm64/kernel/cpu-reset.S          |   4 +-
 arch/arm64/kernel/cpu-reset.h          |   8 +-
 arch/arm64/kernel/hibernate.c          | 261 ++++++-----------------
 arch/arm64/kernel/machine_kexec.c      | 199 ++++++++++++++----
 arch/arm64/kernel/relocate_kernel.S    | 196 +++++++++---------
 arch/arm64/mm/Makefile                 |   1 +
 arch/arm64/mm/trans_table.c            | 274 +++++++++++++++++++++++++
 kernel/kexec.c                         |   4 +
 kernel/kexec_core.c                    |   8 +-
 kernel/kexec_file.c                    |   4 +
 kernel/kexec_internal.h                |   2 +
 16 files changed, 755 insertions(+), 340 deletions(-)
 create mode 100644 arch/arm64/include/asm/trans_table.h
 create mode 100644 arch/arm64/mm/trans_table.c

-- 
2.22.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
