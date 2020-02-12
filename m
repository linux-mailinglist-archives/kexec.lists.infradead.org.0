Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CFB15A751
	for <lists+kexec@lfdr.de>; Wed, 12 Feb 2020 12:04:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=raRd9AHs9l19coltZ4hIRc2pn2hcbgrgfm96os6ZG0c=; b=DI4OtR6cs7D6z3
	40jiSG6HhXtKo0apwf5KRfAaHpZWHuZFNPU8i6GtUlgp1FnTdR2XBjRJgykR9ocSur50M9g7YIYvG
	oD7KYGDzEBUhP7PsZXzA47dA2OT6jR/6pNtVewrfnNWq8rP971oBYg3b1apxl9CHZHDSU4UZmFpn9
	fquIIFcWXmAIIK9sPSf6BePJZOGNTY25/k7vDv9Nz21WJyLvYvFHIMnkEAJzw8vN380gD+Srqc1Di
	MHbG1qNwxlpEajLmf3/ymnBlm5v0kHHnDGMJZj7v6xnG9IEn9+XoNxNSBRYH5yreS8Q9ad2s/o2Na
	m7hkK7lnqsjM4hsMi1cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pow-0007o8-Pk; Wed, 12 Feb 2020 11:04:42 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pot-0007nL-K4
 for kexec@lists.infradead.org; Wed, 12 Feb 2020 11:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581505477;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=adywfWdVjvKQEdzkL3wNz16CH2RMtcYzjA3EP8nYGYg=;
 b=CuWStGMjoF+b7uDIL205cVYiAICC5ZqwFfLn3gVUawlsC2c+63pRboS/XJ0SKa3HiUKIBL
 i7cKV4MPHPNUHZPzdvuzqyHvrCota/fpXBqvmYePInGMlQMaGlI7zteLxLJ1LOYGTkbH8+
 /cXBtBkPr0sdG44+mQMmfCEQ5PGjC4g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-81-Y6ThY3jeNY-8TpMpg-ZMmg-1; Wed, 12 Feb 2020 06:04:32 -0500
X-MC-Unique: Y6ThY3jeNY-8TpMpg-ZMmg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DF00801E67;
 Wed, 12 Feb 2020 11:04:31 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-206.pek2.redhat.com
 [10.72.12.206])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C62F626FA9;
 Wed, 12 Feb 2020 11:04:28 +0000 (UTC)
Date: Wed, 12 Feb 2020 19:04:24 +0800
From: Dave Young <dyoung@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>
Subject: [PATCH] x86/kexec: do not reserve kexec setup_data in kexec e820 table
Message-ID: <20200212110424.GA2938@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_030439_734456_FB2B3FE8 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

The e820 table for kexec kernel always takes setup_data as reserved.
It is reasonable for the setup_data passed by the 1st kernel boot loader,
for example SETUP_PCI etc.  But SETUP_EFI is used by kexec itself to
enable EFI in 2nd kernel, also kexec setups it every time. Thus it
is pointless to reserve kexec prepared setup_data.

1st physical boot: no SETUP_EFI
kexec load new kernel and prepare a SETUP_EFI setup_data, then reboot
 -> 2nd kernel sees SETUP_EFI, reserves in both e820 and kexec e820
    another kexec load prepare a new SETUP_EFI, then reboot
    -> 3rd kernel has two SETUP_EFI ranges reserved
       -> and so on..

Thus skip SETUP_EFI while reserving setup_data for kexec kernel.

Signed-off-by: Dave Young <dyoung@redhat.com>
---
 arch/x86/kernel/e820.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

--- linux-x86.orig/arch/x86/kernel/e820.c
+++ linux-x86/arch/x86/kernel/e820.c
@@ -999,7 +999,9 @@ void __init e820__reserve_setup_data(voi
 	while (pa_data) {
 		data = early_memremap(pa_data, sizeof(*data));
 		e820__range_update(pa_data, sizeof(*data)+data->len, E820_TYPE_RAM, E820_TYPE_RESERVED_KERN);
-		e820__range_update_kexec(pa_data, sizeof(*data)+data->len, E820_TYPE_RAM, E820_TYPE_RESERVED_KERN);
+		/* Skip kexec passed setup_data */
+		if (data->type != SETUP_EFI)
+			e820__range_update_kexec(pa_data, sizeof(*data)+data->len, E820_TYPE_RAM, E820_TYPE_RESERVED_KERN);
 
 		if (data->type == SETUP_INDIRECT &&
 		    ((struct setup_indirect *)data->data)->type != SETUP_INDIRECT) {


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
