Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5484D9592
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 17:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mse9uEUOufD1YT1Mp/MPMF/i7+ryHdlN85Pms8TcJT4=; b=CxqrYKZBqB+t2E
	oK5kcSFzm53CT5AAEgJsyvWT80yZiKFDtZpIh5HTjd+SatUuqHe8WknwaAdxZ84ZqSpDUZwpk9zgm
	FGXwEgcjKmyOxXKGUIwNFNlhOFymB8qzd7KgkskA16QkMQkgMJa6poAYq7kOvcgvF1xPohZe5MZTp
	azR6c1zAPdJNMKWodY/QA0jDecjivm8DTnE/aofVsMGC/0yHATLdAmICSKyxWKPQJIg5ZzFXF9Dv1
	GPkCi667YBJuSB8qfBlpmil0bCDtEUrULqGRt5WOGCMolmkQ2XTfMKdUg6fWEGR2XYPJzv5viFqdZ
	z/vf3krabO8LHv4QRgcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlFE-0008Mn-G9; Wed, 16 Oct 2019 15:29:48 +0000
Received: from scorn.kernelslacker.org ([2600:3c03:e000:2fb::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlF6-0008LK-Fg
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 15:29:46 +0000
Received: from [2601:196:4600:6634:ae9e:17ff:feb7:72ca]
 (helo=wopr.kernelslacker.org)
 by scorn.kernelslacker.org with esmtp (Exim 4.92)
 (envelope-from <davej@codemonkey.org.uk>)
 id 1iKlEy-0003D2-TP; Wed, 16 Oct 2019 11:29:32 -0400
Received: by wopr.kernelslacker.org (Postfix, from userid 1026)
 id 7A4EB56031F; Wed, 16 Oct 2019 11:29:32 -0400 (EDT)
Date: Wed, 16 Oct 2019 11:29:32 -0400
From: Dave Jones <davej@codemonkey.org.uk>
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Subject: Re: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide by
 zero in print_report())
Message-ID: <20191016152932.GA25107@codemonkey.org.uk>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03591761@BPXM09GP.gisp.nec.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03591761@BPXM09GP.gisp.nec.co.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: SpamAssassin invocation failed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_082940_524166_99D20D90 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 08:03:51PM +0000, Kazuhito Hagio wrote:

 > In this case, was the "makedumpfile Completed." message emitted?
 > It looks like the buffer of program headers was not written to the file..
 > 
 > Anyway, a debugging patch attached below.

Our kdump tooling redirects makedumpfile output to dmesg, and unfortunately this debug
patch produces so much info it filled the ring buffer, so we didn't
catch the beginning.

I'll rework things so that it redirects to a file instead of dmesg, but
it's going to take me a while to get that deployed and tested.

	Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
