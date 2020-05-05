Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C85D1C60B2
	for <lists+kexec@lfdr.de>; Tue,  5 May 2020 21:05:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SOXyEa9AvmDGxBkhBYMAY8doq6Icmq3zLfdlCJVGn+o=; b=qAt
	ZKlsB9vCmOQYIO1hN6NP9cWOrh0VO4gxnwWhJcNybeW81QkqFFDWpzLSh+RyFKLqRKngpRSyDdkLT
	Yj9VgWl4HkXiCPC/trsPkPYXnAEujaaj1w193tSNC7HqYysJ/RrK7SnDExAUDw2pmL+VjQdM8NdH6
	O4lra38lI0v8HFSyKMr0fDAVWHq0x5Fzu2rHx9rsRXc3dR5HXPl+Y9ScEThMwFAytsrF7anWekYqT
	6Un4UmdJ2KBD6zUF+qu6H+FeenAhW6gaLcbjNyUbiUD37Pyqt1w8ZdChW36ZOOT3AeIRXywHXkliE
	rw0hVkGqHbcgvzZ+2M0t2NFTI2dKPTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2sJ-00020V-Rw; Tue, 05 May 2020 19:05:03 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2sF-0001vV-UP
 for kexec@lists.infradead.org; Tue, 05 May 2020 19:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588705496;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Y8f46YbYfRwsMn67/CC4fQdLqM6HB0oKyeZNu3UeoMY=;
 b=MtRkzEisIyF0IJwqAxWxwZWsoU5aAW3WKqunYoMfk8tRPtTv/ANWakCQnRVMZBYpEDYV7B
 5NhNMmwvEpjxu3r9Q8JpyzXw85zNSEHJ/BfZomYZBR47MEneYVV0SDUiGNFAIA7M2bQI3d
 2vNo7hVpBhNFVYllaEKluaqMJ7XE8c8=
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-t371oC6TMsOXelD0wxZH7Q-1; Tue, 05 May 2020 15:04:53 -0400
X-MC-Unique: t371oC6TMsOXelD0wxZH7Q-1
Received: by mail-pl1-f200.google.com with SMTP id b1so2681681plm.10
 for <kexec@lists.infradead.org>; Tue, 05 May 2020 12:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gcXMyD41pZbNM1SUCbRbLelE1XAUtFal40kiUaUajmk=;
 b=ncTXrB37pyc59OKJonv+LxM6dC365VP6QrfwwGy0UJQPUsMtVbl5bcObGUQHi76bcF
 NpCsY4U4JAMhDfYnhbu0hpN1vZbSh5woDjvnGzSfpXZ3MI3mCvtFQLiHHGz1JZV00yIH
 IbDt9NDt41tO51eTI/8W7ANIhuh0DgMpOPx2fE6JYatkldlkfQWhvo34gi0mZd/ktSrR
 WEZjno6HO6b7/WyguGwCXpNn8H07RUSkTg9Ujf2rel22PkAIncHg+iElbOrh8jowx01I
 9OyW7DbRzCE3pKnRACYPbPvDuIRvltqYy6WtyVfiT1xcfi4XEhLqydTQGiF4Rk2FvCtv
 DhLA==
X-Gm-Message-State: AGi0PubQ1E15kfj1e6mJDBob9c+6dwsJipVzyOY46OY1WeVFDyB45Vd0
 HeoigUA4VbrswuhFpOwKjKxZD4ONqnk5oUt7wfXUrAbxFT/gnXlpVAsx2bmx1OJL/iJSZxT73EX
 51rMkZqEAQaAfxvdq0fon
X-Received: by 2002:a63:6e8a:: with SMTP id j132mr3534778pgc.301.1588705492033; 
 Tue, 05 May 2020 12:04:52 -0700 (PDT)
X-Google-Smtp-Source: APiQypKBraGUIDcFG9XSdThqRw+1cdaikZ4rNFXMH+U0+iXdoy+oY/wIGdJj6n4cm/tV5WzKDyO/OA==
X-Received: by 2002:a63:6e8a:: with SMTP id j132mr3534746pgc.301.1588705491674; 
 Tue, 05 May 2020 12:04:51 -0700 (PDT)
Received: from localhost ([122.177.124.216])
 by smtp.gmail.com with ESMTPSA id o30sm2032230pgn.12.2020.05.05.12.04.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 May 2020 12:04:50 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: netdev@vger.kernel.org
Subject: [PATCH 0/2] net: Optimize the qed* allocations inside kdump kernel
Date: Wed,  6 May 2020 00:34:39 +0530
Message-Id: <1588705481-18385-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_120500_053177_A5220865 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: aelior@marvell.com, manishc@marvell.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 GR-everest-linux-l2@marvell.com, bhupesh.linux@gmail.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

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

-
Bhupesh Sharma (2):
  net: qed*: Reduce RX and TX default ring count when running inside
    kdump kernel
  net: qed: Disable SRIOV functionality inside kdump kernel

 drivers/net/ethernet/qlogic/qed/qed_sriov.h  | 10 +++++++---
 drivers/net/ethernet/qlogic/qede/qede.h      |  5 +++--
 drivers/net/ethernet/qlogic/qede/qede_main.c |  2 +-
 3 files changed, 11 insertions(+), 6 deletions(-)

-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
