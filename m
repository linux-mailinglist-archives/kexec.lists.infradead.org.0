Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2B51CD612
	for <lists+kexec@lfdr.de>; Mon, 11 May 2020 12:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Q46z4qnMaoTMTggHiq6qpYgbSXlZnKzjI34P5SwU6Ww=; b=mps
	x4w8IHzV2SOBbY0lMn3OnhzYloo+qL6Nrqq99cRGNMruY9XkmeKZ53N5AU5yN+bIvsD0VSpCO2T4N
	OAKnA5tWoHUMS5comY7HVIPZKOuVbihMqOGvaT/tzdQk/n0gh8GUrHu/P0dPXq+dhdHV6hhWx9goy
	eDmPXIaNIBJ5bJJVI3bY69VIgJWvOa8xtaHRwOEvRN2mtC8NikyoyB218P8HhaLVtDfDejG7CkdiK
	yhDDKwbxAp7kQIg5/P77fvb7/cUzlMEkfSzJ7AJ5VJU5t+amnmx2Ve4RpsdPQoPAevlF+s0YBYSiI
	cdFWlGYxK/9kKySpvnaCkgaOLNF5pEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5Pi-0006GR-NT; Mon, 11 May 2020 10:11:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5Pf-0006FT-A8
 for kexec@lists.infradead.org; Mon, 11 May 2020 10:11:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589191912;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type;
 bh=8dqwlRs0MIbbYYZ5cTiHH12yPXOUWNjjWHMIX42DRKA=;
 b=BR2PZ65OqKxRbbnTr3QDq7gjLQWRIOe4zvY9VpBCQgjcrBeGxc6NGIPja14WRk1RIdkgET
 5sGNowyYfvUp9E1z+GjZbstMEtqp5APB/97kBVEzSlSGJHkkhurnICzC2Tdo7gykaTFrGQ
 Z0LVPBbOQpZdlEqxnlguSPL1NKnx4Z4=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-147-JeR9jY7rNfihUD7C1wq3ug-1; Mon, 11 May 2020 06:11:48 -0400
X-MC-Unique: JeR9jY7rNfihUD7C1wq3ug-1
Received: by mail-pj1-f69.google.com with SMTP id o13so17180742pjb.7
 for <kexec@lists.infradead.org>; Mon, 11 May 2020 03:11:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8dqwlRs0MIbbYYZ5cTiHH12yPXOUWNjjWHMIX42DRKA=;
 b=PVGEK7inmccHuMD+UKU2hVwPWxPiYaUS7gukJkxsWIe7fcHRrHw6zG3adEH4lCrqJu
 gPUf+zgQ4V7IALAq0f6CHCQbwocfTVD9AEuFrK/toQ6YZqwt5xcjV6dVO+Mcl3rxY5bo
 Bh8PwsqZy81PmQ1KB7gcfLvF8JHljcX5oHC3HEpr0AKm1STcBWBOszJE2KlFCBjfJXcW
 Ersi30ro6QdfOpw9AM1932o07ynzOZSFm7kMs4gFGHPTzFrHcwe3gKcbTFzPT6KBkCcN
 dz+kqkDroxSpCNDqo/P7smERCBDvR31xgHTPU80JtCwxqDYYBB5pYx1heOhw1sSB9jf0
 1lpg==
X-Gm-Message-State: AGi0PuanLi8hGooLqhzvc+g/rQYQbMxkoimJc3G9ytFFNcepml7ISPeN
 tu6A0gcrnfw5Zg2d/24EHlOHM6DgmG9eFVdPCqgrpQDC1V33WCnD/JqZU8CwcR8EN8Q3Wj7+wpf
 zARSs+cxJqdKYbxeNV3T+
X-Received: by 2002:a17:90a:2344:: with SMTP id
 f62mr19416891pje.152.1589191907145; 
 Mon, 11 May 2020 03:11:47 -0700 (PDT)
X-Google-Smtp-Source: APiQypI6U2PBXvp5NefRkcNxi8d5R6lAoUyguWTMssi1lnpWsenTGf54ZPP0B9tvxz5rBp8n9A2vjg==
X-Received: by 2002:a17:90a:2344:: with SMTP id
 f62mr19416853pje.152.1589191906709; 
 Mon, 11 May 2020 03:11:46 -0700 (PDT)
Received: from localhost ([223.235.87.110])
 by smtp.gmail.com with ESMTPSA id h13sm7567956pgm.69.2020.05.11.03.11.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 May 2020 03:11:46 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 0/2] net: Optimize the qed* allocations inside kdump kernel
Date: Mon, 11 May 2020 15:41:40 +0530
Message-Id: <1589191902-958-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_031155_430437_D2D36A9F 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: aelior@marvell.com, irusskikh@marvell.com, manishc@marvell.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 GR-everest-linux-l2@marvell.com, bhupesh.linux@gmail.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Changes since v1:
----------------
- v1 can be seen here: http://lists.infradead.org/pipermail/kexec/2020-May/024935.html
- Addressed review comments received on v1:
  * Removed unnecessary paranthesis.
  * Used a different macro for minimum RX/TX ring count value in kdump
    kernel.

Since kdump kernel(s) run under severe memory constraint with the
basic idea being to save the crashdump vmcore reliably when the primary
kernel panics/hangs, large memory allocations done by a network driver
can cause the crashkernel to panic with OOM.

The qed* drivers take up approximately 214MB memory when run in the
kdump kernel with the default configuration settings presently used in
the driver. With an usual crashkernel size of 512M, this allocation
is equal to almost half of the total crashkernel size allocated.

See some logs obtained via memstrack tool (see [1]) below:
 dracut-pre-pivot[676]: ======== Report format module_summary: ========
 dracut-pre-pivot[676]: Module qed using 149.6MB (2394 pages), peak allocation 149.6MB (2394 pages)
 dracut-pre-pivot[676]: Module qede using 65.3MB (1045 pages), peak allocation 65.3MB (1045 pages)

This patchset tries to reduce the overall memory allocation profile of
the qed* driver when they run in the kdump kernel. With these
optimization we can see a saving of approx 85M in the kdump kernel:
 dracut-pre-pivot[671]: ======== Report format module_summary: ========
 dracut-pre-pivot[671]: Module qed using 124.6MB (1993 pages), peak allocation 124.7MB (1995 pages)
 <..snip..>
 dracut-pre-pivot[671]: Module qede using 4.6MB (73 pages), peak allocation 4.6MB (74 pages)

And the kdump kernel can save vmcore successfully via both ssh and nfs
interfaces.

This patchset contains two patches:
[PATCH 1/2] - Reduces the default TX and RX ring count in kdump kernel.
[PATCH 2/2] - Disables qed SRIOV feature in kdump kernel (as it is
              normally not a supported kdump target for saving
	      vmcore).

[1]. Memstrack tool: https://github.com/ryncsn/memstrack

Bhupesh Sharma (2):
  net: qed*: Reduce RX and TX default ring count when running inside
    kdump kernel
  net: qed: Disable SRIOV functionality inside kdump kernel

 drivers/net/ethernet/qlogic/qed/qed_sriov.h  | 10 +++++++---
 drivers/net/ethernet/qlogic/qede/qede.h      |  2 ++
 drivers/net/ethernet/qlogic/qede/qede_main.c | 13 ++++++++++---
 3 files changed, 19 insertions(+), 6 deletions(-)

-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
