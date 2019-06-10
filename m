Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422323B277
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 11:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nd33X5wWvtkAfkfBdnh+qtqci9Ea/yiNqhZaBkcIwCE=; b=BXy4l4vsi75AEx
	VnNmw8TzhN5Ke98zbXk4zzyoo4F7q2yB6FaZPaN+UBmCZGO8+EcriuS3wMXdLav+xpxkH6I/ylaBL
	AsraIoMWdOtD7v1fqZFIR5emEpT9gCw+adzGrwkE4q46ybNufjdjjUuU8ZMRodhdoHxIrDNf4fVNb
	F74SqqXky2Rh/xeaNundZMp7SF4HJkqzaERRXjVNbZbY5pgJz8lQ14TFzDa/mpEYo1BpaEwANKg1F
	KhGlG63SSU+zGewSrxKmZbkarFpIO30NcRjneAsCcJF2qtvdovWqZRk137aaHtBN7LX8tR23JAXA1
	WxLfnJPTGhnA3BfPj43A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGyE-0005I2-4s; Mon, 10 Jun 2019 09:52:06 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGy9-00054k-5B
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 09:52:02 +0000
Received: from zn.tnic (p200300EC2F052B0034A730CA72A5B0FA.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f05:2b00:34a7:30ca:72a5:b0fa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 656711EC0959;
 Mon, 10 Jun 2019 11:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1560160311;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=fCNMGDhBR6moHGXQO/PdPyxtjG1/DmUqhTwAHW5WMV0=;
 b=VvGpBw1GbJS6NG1HrcMgam2FrzaLJ2fr3ptcxOuBkYxVJpa6AO7la5LWvnAxJzz6p2boTj
 2YE2xxrAtVE9rVpDdy7o917eURN9NFT18cR6GQRImevXIW1OJARIQl4Elu5SZGlPsTjuQ3
 sVSjG75IhlXMsvcYqB91vNLCbs4INKE=
Date: Mon, 10 Jun 2019 11:51:50 +0200
From: Borislav Petkov <bp@alien8.de>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH] x86/kexec: Add ACPI NVS region to the ident map
Message-ID: <20190610095150.GA5488@zn.tnic>
References: <20190610073617.19767-1-kasong@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610073617.19767-1-kasong@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_025201_348938_ED88F9CC 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: x86@kernel.org, Baoquan He <bhe@redhat.com>, kexec@lists.infradead.org,
 Chao Fan <fanc.fnst@cn.fujitsu.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org,
 Dirk van der Merwe <dirk.vandermerwe@netronome.com>,
 Junichi Nomura <j-nomura@ce.jp.nec.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 03:36:17PM +0800, Kairui Song wrote:
> With the recent addition of RSDP parsing in decompression stage, kexec
> kernel now needs ACPI tables to be covered by the identity mapping.
> And in commit 6bbeb276b71f ("x86/kexec: Add the EFI system tables and
> ACPI tables to the ident map"), ACPI tables memory region was added to
> the ident map.
> 
> But on some machines, there is only ACPI NVS memory region, and the ACPI
> tables is located in the NVS region instead. In such case second kernel

*are* located - plural.

> will still fail when trying to access ACPI tables.
> 
> So, to fix the problem, add NVS memory region in the ident map as well.
> 
> Fixes: 6bbeb276b71f ("x86/kexec: Add the EFI system tables and ACPI tables to the ident map")
> Suggested-by: Junichi Nomura <j-nomura@ce.jp.nec.com>
> Signed-off-by: Kairui Song <kasong@redhat.com>
> ---
> 
> Tested with my laptop and VM, on top of current tip:x86/boot.

You tested this in a VM and not on the *actual* machine with the NVS
region?

This is a joke, right?

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
