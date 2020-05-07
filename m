Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A1B1C9E4A
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 00:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UsHE/G3choIWmKwEvYhnXLRMwgeBg5WRaluuQk6fDY=; b=OL183dH2YJ5L0L
	57ZjzHSmiFlAo4JdWSfPaR/Mhx90q2EfyEQ3pN3qiSNsTqfTGqYt66o+sghMLErIJ//GKikeaMhiO
	YJZV2t1TWY2ftZ44lF/pvSkwB7p5A/GMTnDMbqjnjHmAK8Fa74EZIWeQ2+6Ehrbnhg4TMgcIzh7jI
	OQlUW1LCla3dq7nC4kjgASu/j85M6dzcRoeKATgmpB081OUjPi6zxrypMITRfA8vUB5XSPCObTqhF
	dAtcbiwVQlLL0dxLBAv/stn3rHNNlJav7rLZf6XGaGEf3p0+Gl01AqPoiJZ2c05aiEQquQa32qMCq
	XPOzxXiTtW53PbN+FCAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWonY-0007Cv-U4; Thu, 07 May 2020 22:15:20 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWonW-0007Bi-AD
 for kexec@lists.infradead.org; Thu, 07 May 2020 22:15:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588889715;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=H1fE5P6+fvPAXaUqAeYEo8nNr2ZmJz9U6Sff/jvrkLc=;
 b=fuR8TXhkWlU7BV272oV81nRJ1yWnJTLXfUm1YglgG4UzLV/KNIHnPDAXrcQzJIqY+JX24/
 iTnD+gLTpgngFX3YfBgTLejjRt4yLcb7xNNh4w7Sow9Qy55asNyCKwCiPZcaD0Gamk740f
 HU6Ly6Q/MkeQOZxukUPfcV5+7JFgtFQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-hlU1JeMCM2mh6kooH-rKBg-1; Thu, 07 May 2020 18:15:13 -0400
X-MC-Unique: hlU1JeMCM2mh6kooH-rKBg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6808107ACCA;
 Thu,  7 May 2020 22:15:11 +0000 (UTC)
Received: from optiplex-lnx (unknown [10.3.128.26])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 70153649B1;
 Thu,  7 May 2020 22:15:06 +0000 (UTC)
Date: Thu, 7 May 2020 18:15:03 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] kernel: add panic_on_taint
Message-ID: <20200507221503.GL205881@optiplex-lnx>
References: <20200506222815.274570-1-aquini@redhat.com>
 <C5E11731-5503-45CC-9F72-41E8863ACD27@lca.pw>
 <20200507204219.GJ205881@optiplex-lnx>
 <27AA744E-930A-492A-BE87-05A119FE1549@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27AA744E-930A-492A-BE87-05A119FE1549@lca.pw>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_151518_430015_83F07B0E 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>, Baoquan He <bhe@redhat.com>,
 linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 kexec@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 06:05:27PM -0400, Qian Cai wrote:
> 
> 
> > On May 7, 2020, at 4:42 PM, Rafael Aquini <aquini@redhat.com> wrote:
> > 
> > On Wed, May 06, 2020 at 10:50:19PM -0400, Qian Cai wrote:
> >> 
> >> 
> >>> On May 6, 2020, at 6:28 PM, Rafael Aquini <aquini@redhat.com> wrote:
> >>> 
> >>> Analogously to the introduction of panic_on_warn, this patch
> >>> introduces a kernel option named panic_on_taint in order to
> >>> provide a simple and generic way to stop execution and catch
> >>> a coredump when the kernel gets tainted by any given taint flag.
> >>> 
> >>> This is useful for debugging sessions as it avoids rebuilding
> >>> the kernel to explicitly add calls to panic() or BUG() into
> >>> code sites that introduce the taint flags of interest.
> >>> Another, perhaps less frequent, use for this option would be
> >>> as a mean for assuring a security policy (in paranoid mode)
> >>> case where no single taint is allowed for the running system.
> >> 
> >> Andrew, you can drop the patch below from -mm now because that one is now obsolete,
> >> 
> >> mm-slub-add-panic_on_error-to-the-debug-facilities.patch
> >> 
> > Please, don't drop it yet. I'll send a patch to get rid of the bits,
> > once this one gets accepted, if it gets accepted.
> 
> Why do you ever want that obsolete patch even show up in linux-next to potentailly waste other people/bots time to test it and develop things on top of it?
>

It's a reasonable and self-contained feature that we have a valid use for. 
I honestly fail to see it causing that amount of annoyance as you are 
suggesting here.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
