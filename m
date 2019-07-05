Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2902C6070F
	for <lists+kexec@lfdr.de>; Fri,  5 Jul 2019 16:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:Date:MIME-Version:
	Subject:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Eds/r7+JploG2MR8AWBZ2VQ3UWAb/9UcNcFSG/HJ0c=; b=MljMMxfP/Ul83h
	cUjX1GT1dMhveKYEUqGulCu2T+hkmVQS2TbltphO5LRFNlG7ckFZnS2m+sSV793IQVFOlNMrt0nfc
	dHdh5uc6THEgXS9xliNtfRZPg5UsT5EwxMejhj96wCVeLZ//gt4Yxx1oM9sexEX6OGDSUV+zgN9OY
	m1eN0BOJig+29BU/sNtmmyMGFW9iPxTusdzdAoYVP2foVd5CP6Q+Aq75w5xkgiDQCxDweYFm8F/iz
	X4r6bnwDZtF+P2KWJ2cwvedMjyJXGqYbgWc4bcjI0k1FTy4kHsbNeK3h9u3MIbEUi2VDIfynBrHmL
	ECFt9jFQwrWbS0EV20YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOlX-0004pp-Ig; Fri, 05 Jul 2019 14:00:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfU-0004eg-O2
 for kexec@bombadil.infradead.org; Fri, 05 Jul 2019 13:54:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:Reply-To:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Subject:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VPeK6JR2zJTqMFMH9YVQgxsevpD0su6EnidCQhK5AcQ=; b=gM/7vmJFQSaOon33nONgEKuUw
 DWy5cdVy4L+DW2P8KOyOrCPVOgJrIAzj7cHaCgcLk2j0hs4nhPIKRDBomTP94P3tzl/JSPhb60QrO
 7Tftgv4dEZDpjLP1Sl/tcUpqGXKMcIu4QLhN8VgkJ8r06SLHkXRkxhoEG1g1C1moHFYgNt+nUiyPi
 8DeOyXPH7qoTqmAHbY9YGq9936SxlsWnunBhUU90rjKAPb7GycoHJRiukoR1DARAHyoW01k51SYvP
 nSxSSPsGsWYf+y2HN0UoHadiuHueuq2Rdr5vk6sLQV6ufuDZmmP1qso0vo7jouANXqs44Sx1rii0F
 9xV8+inwA==;
Received: from serwer.kssip.datahouse.net ([77.95.234.122])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjGtY-0008MB-Dl
 for kexec@lists.infradead.org; Fri, 05 Jul 2019 05:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=wykladowcy.kssip.gov.pl; s=default; h=Message-ID:Reply-To:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Subject:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VPeK6JR2zJTqMFMH9YVQgxsevpD0su6EnidCQhK5AcQ=; b=kmIujwk3js+PyongKDp2qzF7J
 5+UI0EVOV1ENwhst7RKK/Fhrj+L1owJ1E8z/xA3B69dV3/bWpZBBYYDDM1RSfM0gvUzNPYhq0p4aY
 zIq5pr1FmWD2SeV50VSXPrjPBGKGbcEaZaejWKnbFBzrGdWzcw4ieyTrmWP0e59at950477IZRpIW
 l6Hhp6jLpLjNszOXJdIp2nTXT/Zgz4JO1BJeFApxOBvGfeFC8E+gOBFwxpjzmd0P4V3Xbn/WrRZhg
 uJ8V1c/GQ1NjIvc4iu6hKHwn9XJ86ijovfWs9uJ38D+C4sSkLLo0FJ1j85EHHXpb8Y2JJAeWldpOD
 iYY8Qj9lA==;
Received: from [::1] (port=55348 helo=serwer.kssip.datahouse.net)
 by serwer.kssip.datahouse.net with esmtpa (Exim 4.92)
 (envelope-from <a.kosobudzka@wykladowcy.kssip.gov.pl>)
 id 1hjGbQ-0008VR-Mk; Fri, 05 Jul 2019 07:17:44 +0200
MIME-Version: 1.0
Date: Fri, 05 Jul 2019 07:17:44 +0200
From: DM Financial Home <a.kosobudzka@wykladowcy.kssip.gov.pl>
To: undisclosed-recipients:;
Mail-Reply-To: dmfinancialhome@aol.com
Message-ID: <370df707df101b6c135644156a7c2727@wykladowcy.kssip.gov.pl>
X-Sender: a.kosobudzka@wykladowcy.kssip.gov.pl
User-Agent: Roundcube Webmail/1.3.8
X-kssip-MailScanner-Information: Please contact the ISP for more information
X-kssip-MailScanner-ID: 1hjGbQ-0008VR-Mk
X-kssip-MailScanner: Found to be clean
X-kssip-MailScanner-SpamCheck: 
X-kssip-MailScanner-From: a.kosobudzka@wykladowcy.kssip.gov.pl
X-Spam-Status: No
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - serwer.kssip.datahouse.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - wykladowcy.kssip.gov.pl
X-Get-Message-Sender-Via: serwer.kssip.datahouse.net: authenticated_id:
 a.kosobudzka@wykladowcy.kssip.gov.pl
X-Authenticated-Sender: serwer.kssip.datahouse.net: a.kosobudzka@wykladowcy.kssip.gov.pl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_063628_583122_01021920 
X-CRM114-Status: SPAM  (  -5.62  )
X-Spam-Score: 4.2 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.8 MISSING_SUBJECT        Missing Subject: header
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
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
Reply-To: dmfinancialhome@aol.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



-- 
I am a private loan lender, I can help you with the loan you need at a 
low
interest rate of 3%. Are planning of starting a business? Paying off 
your
debts? Buy a car, buy a house, This is the right place to get the 
financial
assistance you need. Kindly contact us at :-( dmfinancialhome@aol.com ) 
for
more info.

Regards

Mike Deanie

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
