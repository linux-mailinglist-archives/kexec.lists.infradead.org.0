Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E51151C9A4
	for <lists+kexec@lfdr.de>; Tue, 14 May 2019 15:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TYBSof6mvwrQyP5TlonXq7SGKHl2D+y4Bl7jQHU2Rs=; b=bOy7C7CgS5+K9n
	fvFeguquE2oO9Ye5nZuP2INp7XTA0RxgWMlv15XXkVfJuzQtyMdvBQs02D9k/jEMbuOyc86JZUNZS
	hgnKmyGhE55EIuV2YMusg7sEJ2JdFnv7G8utZGjc2ZfmH/fF0q//itW27i1hUJCoQmsxuyO/gUx9C
	XmnyK/2oDnQjhHzvObIgmdbj84yB2O0s5r04VMDRXIFsXCQq0ug3GdixHLK7HJeCUCnfRUvXrxLwO
	5yolXQnSyM/9XlCV1FH7aeG61lyYM+4K6sGqaSNgbZxh1msII2ZIZ4F7zru4ddD1oCQoIQEH4DP9c
	3PvroSdLonVBH0EWRd8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXth-0007pf-D9; Tue, 14 May 2019 13:55:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXtY-0007pG-TK
 for kexec@bombadil.infradead.org; Tue, 14 May 2019 13:55:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G0/DILI4wkOiw0LuliWfazXXTvrDz4ftCgzuBreF1sQ=; b=1DRnInwgvj+iNHw6Gr88x+s4w
 82Pc8nh6RGS9QpdafhL5U+kM2/CccUeFd8pX4JQpTGMg3RQ+qBJRmTHisTHwQW1r0sV8qhr+9OX/D
 20tjKVQTxzOnRQT+V3XPU01UwGDrdBZjEykkX4gdGNVXjBdaaNLpl8rmM4gB8Kqs9BlXBhhhT4V67
 Trp7Wy2L9AKmKlu659n6NZXqzXMTeB9MNbfzAVhy8ioJlDkfL27nvJPzfbskhIuXwHMqLnDKYK8io
 rbyh8SgUxefff4kBgBOZJjvj9zw47SP2Hf3pn9b4uaY5w+PiajAGrcWUACcr6oS+jZrSvehx48gnv
 nysTih1Xw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXtS-0008AG-4C; Tue, 14 May 2019 13:54:58 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 8E3722029FD7A; Tue, 14 May 2019 15:54:56 +0200 (CEST)
Date: Tue, 14 May 2019 15:54:56 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
Message-ID: <20190514135456.GS2589@hirez.programming.kicks-ass.net>
References: <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
 <20190513080653.GD16774@MiWiFi-R3L-srv>
 <20190514032208.GA25875@dhcp-128-65.nay.redhat.com>
 <20190514084841.GA27876@dhcp-128-65.nay.redhat.com>
 <20190514113826.GM2589@hirez.programming.kicks-ass.net>
 <20190514125835.GA29045@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514125835.GA29045@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: fanc.fnst@cn.fujitsu.com, kasong@redhat.com, Baoquan He <bhe@redhat.com>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com, j-nomura@ce.jp.nec.com,
 tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 08:58:35PM +0800, Dave Young wrote:

> Hmm, it seems caused by some WIP branch patches, I suspect below:

Grmbl.. Ingo, can you zap all those WIP branches, please? They mostly
just get in the way of things. If you want to run them, merge them in a
private branch or something.

> commit 124d6af5a5f559e516ed2c6ea857e889ed293b43
> x86/paravirt: Standardize 'insn_buff' variable names
> 
> The suspicious line is "per_cpu(insn_buff, cpu) = insn_buff;"

Yah, unfortunatly per-cpu variables live in the same namespace as normal
variables and so the above is incorrect, because the local @insn_buffer
variable shadows the global per-cpu symbol and very weird things will
happen.

This is of course consistent with C rules, where everything lives in the
same namespace...

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
