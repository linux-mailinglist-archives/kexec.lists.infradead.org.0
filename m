Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 562FDFBF4D
	for <lists+kexec@lfdr.de>; Thu, 14 Nov 2019 06:18:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G+CwcZ8fz++75GfxJ7EiPkPm225SIT9KwFsYOjaJ9FA=; b=FC+tN6cwgvxloG
	xeZK2mb+41y5tZ38jkGqDqq7Ps5d0iM1211uAQDpbc0ox9T+6VT9ToueWATd8C3sFvjqWURFf0JER
	j5i8rHlJJikLhff8C2b/mvgUuI133yG+j9IAebIrgpPWQtADFldtg2+DqyhNs91jVnUdFMzlmC51p
	6/X41KPte0+Vwp1KkYQdjV6AuT0pan1KZgPG2QnJfFzF+paK15nUepM5DLLF6P1CczDMzMDdlPy9m
	nVbXOiyMSSlCEqwRHPw/vlMID3URWZCtc1JavgjlX9noihBBL7ulHmnY9fzKHBOsEhJJfAr/CH2xN
	oRQqUqUyKYhTlDLr616Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7W2-0003jN-TW; Thu, 14 Nov 2019 05:17:58 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7Sl-0007KX-T8
 for kexec@lists.infradead.org; Thu, 14 Nov 2019 05:14:40 +0000
Received: by mail-pl1-x642.google.com with SMTP id e3so2077613plt.7
 for <kexec@lists.infradead.org>; Wed, 13 Nov 2019 21:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R7b2JPtWwEx72nyCRSKpBp7/BtsD5j/Gd6lSZi42tNY=;
 b=SAqGs6fQe8YE08HwbEoz3pMr+dp5RUp5r07rVVDRW1kTo3hsf1d0dzMBdMNQbAqOa+
 6xDVVt10resWw/FTWyy8sWSzzlyQ5a0kQ50/t43SI/7LD8UkqOJsxJdriFxpoUFe8N6l
 hbL2nLKz5wc1YvFIfbr74jMQPuusyPBbR8Bg5CzEVBj85/whJlLXjWcQROl5qJqCTv40
 5pNxOqKDIq/82f9UByGx9DP1aiNI6vHqxFaBPQGBlqnLeebjOcCQcQB2sZxjDyY8L88Q
 aiYpfon2RNigH4ZfGF8tbhyvLrQe5NiBtmBdC2KZ6cQl379vvUy2IbrfSHKpBv5aITAc
 5SJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R7b2JPtWwEx72nyCRSKpBp7/BtsD5j/Gd6lSZi42tNY=;
 b=ji+bxwWGUG3bGwIYwJEoXMLwxQj0BzFu7nLIQ6LbRY1Z6w7WVSidoTPwwDDMvg3CNF
 xh+ZWyryGhrq2VeAcXmqBc1tCCgOzcRJT7pcssuuEGxTCWRMMI1xdvgSnKBuL7DWlhWn
 29MsS6nPsL1vscMOdZBbkeTM3rmNKK4oyORl0VM7qcgGEPk8L/2zufCosBxb2PfjCJiR
 O8I8TArog1Jiy7cBc/yCdH2S4HHXGPO/nzV0L/ip0mG5OBYNAPxVzCcGuq+Qa6ZwE9Ea
 EKfuiKwn7w54Kf/Im1980CsM8cfjivl5GEg3b6g7CMgViCch9EWAMeeWD/MMujMCgg6e
 +69g==
X-Gm-Message-State: APjAAAUJ+yswOlnJ4qI5D/RQ52sk59P1+zUpbkmZKRGIUUOhJUzKHGpy
 fj2GXxfX0oZ9APCMjnDhLnz5lQ==
X-Google-Smtp-Source: APXvYqyUGkyUr51KXBUYxjBncLe29pHZ3ycMcQpcMe9U0q8KrLojzhcQSJQH8Kdlb50vioiqEfwVzg==
X-Received: by 2002:a17:902:aa42:: with SMTP id
 c2mr7453010plr.311.1573708474696; 
 Wed, 13 Nov 2019 21:14:34 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id
 i123sm7799642pfe.145.2019.11.13.21.14.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 Nov 2019 21:14:34 -0800 (PST)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH v2 0/3] arm64: kexec_file: add kdump
Date: Thu, 14 Nov 2019 14:15:07 +0900
Message-Id: <20191114051510.17037-1-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_211436_123120_8EEAE698 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This is the last piece of my kexec_file_load implementation for arm64.
It is now ready for being merged as some relevant patch to dtc/libfdt[1]
has finally been integrated in v5.3-rc1.
(Nothing changed since kexec_file v16[2] except adding Patch#1 and #2.)

Patch#1 and #2 are preliminary patches for libfdt component.
Patch#3 is to add kdump support.

Bhepesh's patch[3] will be required for 52-bit VA support.
Once this patch is applied, whether or not CONFIG_ARM64_VA_BITS_52 is
enabled or not, a matching fix on user space side, crash utility,
will also be needed. 

Anyway, I tested my patch, at least, with the following configuration:
1) CONFIG_ARM64_BITS_48=y
2) CONFIG_ARM64_BITS_52=y, but vabits_actual=48

(I don't have any platform to use for
3) CONFIG_ARM64_BITS_52=y, and vabits_actual=52)

[1] commit 9bb9c6a110ea ("scripts/dtc: Update to upstream version
    v1.5.0-23-g87963ee20693"), in particular
	7fcf8208b8a9 libfdt: add fdt_append_addrrange()
[2] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-November/612641.html
[3] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-November/693411.html

Changes in v2 (Nov 14, 2019)
* rebased to v5.4-rc7
* no functional changes

AKASHI Takahiro (3):
  libfdt: define UINT32_MAX in libfdt_env.h
  libfdt: include fdt_addresses.c
  arm64: kexec_file: add crash dump support

 arch/arm64/include/asm/kexec.h         |   4 +
 arch/arm64/kernel/kexec_image.c        |   4 -
 arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
 include/linux/libfdt_env.h             |   3 +
 lib/Makefile                           |   2 +-
 lib/fdt_addresses.c                    |   2 +
 6 files changed, 112 insertions(+), 9 deletions(-)
 create mode 100644 lib/fdt_addresses.c

-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
