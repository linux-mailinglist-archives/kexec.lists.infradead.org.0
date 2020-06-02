Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64721EB9BB
	for <lists+kexec@lfdr.de>; Tue,  2 Jun 2020 12:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=6alVzBudZjji9Qx+eSqLkKcUjQd6mvA61LiHRJ3LcrY=; b=f7cZQIZ4Hfv1Cw
	I7G8kWdBnAAfblaNYcqaWccObKkrXGT0nS+oR4MBpiOtUaqlMp0nqnYhIxPbR63GBZPjq4OptCZL4
	c20rinAmK5wnQgSTcZ9mUhBB43k3gQgYt1DWSUVyRAh0P8btuHP/L0fzbJgOvGIRDOpi9oi6uUheO
	u04k7DWg+FQI+a9zc96wXlfzJD5Dr5KByRQIvSgu4HEF9mjgV86ZDL8Z5w7rl5nLUCftM9hbfPQbp
	NdJUdxsR2yYOxMyNmB89QnCkfKqV31Lw7OLEFUfo7+U67GRhyd2G853Y1tL5MnqXPUD8hBJW/M/97
	PAwB+4bXnil8CHF72dtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg4Le-0004np-7n; Tue, 02 Jun 2020 10:40:46 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg4LX-0004mr-Np
 for kexec@lists.infradead.org; Tue, 02 Jun 2020 10:40:41 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200602104036euoutp01525bfa6f23fe4340f94aead806cc93d8~Us-XN8u4B0347303473euoutp01h
 for <kexec@lists.infradead.org>; Tue,  2 Jun 2020 10:40:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200602104036euoutp01525bfa6f23fe4340f94aead806cc93d8~Us-XN8u4B0347303473euoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591094436;
 bh=F/wB+RFRqWa4/KlmrrcC2wZmpLrXoVIa8zlX0CXRf4k=;
 h=From:To:Cc:Subject:Date:References:From;
 b=PDa3ci0ra9kBESnMScxP+mH+Fi+OVsNj/qIYk4/kEHlE1dmeAnSSqCtEwcEJBwcX4
 ctEnjQjPjN4Qc5ebpgN3L1SHKMHUVWwzDtLiNJFuGC6NUa9jLNSrwJc7cGCeVprt0/
 mRXYT03aqCMar5YmLE7twD8WlVC9xSIBP+ebRvCA=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200602104036eucas1p2fd7f3607ebc0e2d6627ca5d8d6c237fa~Us-W8ZXza3231932319eucas1p2Q;
 Tue,  2 Jun 2020 10:40:36 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 6B.70.60698.4AC26DE5; Tue,  2
 Jun 2020 11:40:36 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200602104036eucas1p1fac98e8f4c2ab7272b4fbf95aefef7cd~Us-Wo0iiE2905529055eucas1p1h;
 Tue,  2 Jun 2020 10:40:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200602104036eusmtrp2d1b48c6bbf0dbb876c3a3a26f651294f~Us-WoRKQ21619716197eusmtrp2a;
 Tue,  2 Jun 2020 10:40:36 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-1e-5ed62ca489c3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 04.BF.08375.3AC26DE5; Tue,  2
 Jun 2020 11:40:36 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200602104035eusmtip19f80395656ba626d5188049e3c054246~Us-WeRbLl2168421684eusmtip1S;
 Tue,  2 Jun 2020 10:40:35 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: horms@verge.net.au, kexec@lists.infradead.org
Subject: [PATCH] arm: Increase zImage length after getting the tag
Date: Tue,  2 Jun 2020 12:40:34 +0200
Message-Id: <20200602104034.31256-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupjleLIzCtJLcpLzFFi42LZduzned0lOtfiDL6sF7HYOGM9q0Xz1q+M
 FrtPf2WyuHloBaPF8QeTWR1YPS5fu8jssXlJvUffllWMHnN+fmMJYInisklJzcksSy3St0vg
 yvj7rp2t4Dlvxanv2g2Mk7m7GDk5JARMJGZNO8rWxcjFISSwglHi0pXvzBDOF0aJz7O72CGc
 z4wSezsnMMK0bN7SAlW1nFFizuY3jBDOc0aJubNmMYFUsQk4SvQvPcEKYosIGEpsP3IVzGYW
 qJf4e/E4G4gtLOAkcervfTCbRUBV4s/WN8wgNq+AtcT7+QvZIbbJS7Qv384GEReUODnzCQuI
 zS+gJbGm6ToLxEx5ieats8EukhBoZpf4feoCG0Szi8T2vxOYIWxhiVfHt0ANlZH4v3M+0KEc
 QHa9xORJZhC9PYwS2+b8YIGosZa4c+4XG0gNs4CmxPpd+hBhR4kp+5oZIVr5JG68FYQ4gU9i
 0rbpzBBhXomONiGIahWJdf17oAZKSfS+WgENQw+Jnk3NjBMYFWcheWwWkmdmIexdwMi8ilE8
 tbQ4Nz212DgvtVyvODG3uDQvXS85P3cTIzCVnP53/OsOxn1/kg4xCnAwKvHwbrh/JU6INbGs
 uDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxilOViUxHmNF72MFRJITyxJzU5NLUgt
 gskycXBKNTAKvwruPtdbeLJlo+2Dab3f5kXfXbjQ+qa3yW711AyuWiMLi/OHVrxkVqjl3DV7
 zbaMrrT3YeHOe+xd5cI253E1rer/2ZztUCbmHVa9JLj+tLzH9piTiw9510l/zOJuOSaTEsxW
 pcn4yIdxzb2b/8SuXwmeMKmZoSw2IoRH+fenqwu3zFAwsFRiKc5INNRiLipOBACFxsvTIQMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjkeLIzCtJLcpLzFFi42I5/e/4Xd0lOtfiDOZLWGycsZ7VonnrV0aL
 3ae/MlncPLSC0eL4g8msDqwel69dZPbYvKTeo2/LKkaPOT+/sQSwROnZFOWXlqQqZOQXl9gq
 RRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJalFunbJehl/H3XzlbwnLfi1HftBsbJ3F2M
 nBwSAiYSm7e0MHcxcnEICSxllLi/uoW9i5EDKCElsXJuOkSNsMSfa11sEDVPGSUevNnFBpJg
 E3CU6F96ghXEFhEwltjctoAVpIhZoJFRYvvNbUwgCWEBJ4lTf++DNbAIqEr82fqGGcTmFbCW
 eD9/ITvEBnmJ9uXb2SDighInZz5hATmCWUBdYv08IZAwv4CWxJqm6ywgNjNQefPW2cwTGAVm
 IemYhdAxC0nVAkbmVYwiqaXFuem5xYZ6xYm5xaV56XrJ+bmbGIFxsO3Yz807GC9tDD7EKMDB
 qMTDu+H+lTgh1sSy4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2I0BXpnIrOUaHI+
 MEbzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwxmuWbEtdeTT/
 bqf3tbIyD9s+Qe0DBTd1Vx3J8OmPmv1jqb34Z4kfjgY+GxZlLX15iS1U8uAaiRTnpXK3t7mk
 Ldd47Jrz0Da5V+SsunXiv49rFvs91a8oXLL3lPak1cd+Rtk/vzDV7MaUWZF32B7eWnd+k8Kt
 KZGb+x+pZZ5brOrpXln8/3HQKiWW4oxEQy3mouJEAHNu7e2ZAgAA
X-CMS-MailID: 20200602104036eucas1p1fac98e8f4c2ab7272b4fbf95aefef7cd
X-Msg-Generator: CA
X-RootMTR: 20200602104036eucas1p1fac98e8f4c2ab7272b4fbf95aefef7cd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200602104036eucas1p1fac98e8f4c2ab7272b4fbf95aefef7cd
References: <CGME20200602104036eucas1p1fac98e8f4c2ab7272b4fbf95aefef7cd@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_034039_909744_4B2A459B 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Russell King <rmk@armlinux.org.uk>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 b.zolnierkie@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SW5jcmVhc2UgdGhlIHNpemUgb2YgdGhlIHpJbWFnZSBhZnRlciBzZWVraW5nIGZvciB0aGUgdGFn
IHRvIGF2b2lkCnJlYWRpbmcgcGFzdCB0aGUgZW5kIG9mIHRoZSBzdXBwbGllZCBidWZmZXIgc2hv
dWxkIHRoZXJlIGJlIG5vdCB0YWcKaW4gdGhlIHpJbWFnZS4KCkZpeGVzOiBmNTdmMGJmODk3NWQy
NGZlMWU3YzQ5MzZmZGZiNWMzYjEyM2FiNzVmClNpZ25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1h
Y2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+CkNjOiBSdXNzZWxsIEtpbmcgPHJta0Bhcm1saW51
eC5vcmcudWs+Ci0tLQoga2V4ZWMvYXJjaC9hcm0va2V4ZWMtekltYWdlLWFybS5jIHwgMTUgKysr
KysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2tleGVjL2FyY2gvYXJtL2tleGVjLXpJbWFnZS1hcm0uYyBiL2tl
eGVjL2FyY2gvYXJtL2tleGVjLXpJbWFnZS1hcm0uYwppbmRleCBmZjYwOWUyLi45MjVhOWJlIDEw
MDY0NAotLS0gYS9rZXhlYy9hcmNoL2FybS9rZXhlYy16SW1hZ2UtYXJtLmMKKysrIGIva2V4ZWMv
YXJjaC9hcm0va2V4ZWMtekltYWdlLWFybS5jCkBAIC01NDMsNiArNTQzLDE0IEBAIGludCB6SW1h
Z2VfYXJtX2xvYWQoaW50IGFyZ2MsIGNoYXIgKiphcmd2LCBjb25zdCBjaGFyICpidWYsIG9mZl90
IGxlbiwKIAkgKi8KIAlrZXJuZWxfbWVtX3NpemUgPSBsZW4gKyA0OwogCisJLyoKKwkgKiBDaGVj
ayBmb3IgYSBrZXJuZWwgc2l6ZSBleHRlbnNpb24sIGFuZCBzZXQgb3IgdmFsaWRhdGUgdGhlCisJ
ICogaW1hZ2Ugc2l6ZS4gIFRoaXMgaXMgdGhlIHRvdGFsIHNwYWNlIG5lZWRlZCB0byBhdm9pZCB0
aGUKKwkgKiBib290IGtlcm5lbCBCU1MsIHNvIG90aGVyIGRhdGEgKHN1Y2ggYXMgaW5pdHJkKSBk
b2VzIG5vdCBnZXQKKwkgKiBvdmVyd3JpdHRlbi4KKwkgKi8KKwl0YWcgPSBmaW5kX2V4dGVuc2lv
bl90YWcoYnVmLCBsZW4sIFpJTUFHRV9UQUdfS1JOTF9TSVpFKTsKKwogCS8qCiAJICogVGhlIHpJ
bWFnZSBsZW5ndGggZG9lcyBub3QgaW5jbHVkZSBpdHMgc3RhY2sgKDRrKSBvciBpdHMKIAkgKiBt
YWxsb2Mgc3BhY2UgKDY0aykuICBJbmNsdWRlIHRoaXMuCkBAIC01NTEsMTMgKzU1OSw2IEBAIGlu
dCB6SW1hZ2VfYXJtX2xvYWQoaW50IGFyZ2MsIGNoYXIgKiphcmd2LCBjb25zdCBjaGFyICpidWYs
IG9mZl90IGxlbiwKIAogCWRiZ3ByaW50ZigiekltYWdlIHJlcXVpcmVzIDB4JTA4bGx4IGJ5dGVz
XG4iLCAodW5zaWduZWQgbG9uZyBsb25nKWxlbik7CiAKLQkvKgotCSAqIENoZWNrIGZvciBhIGtl
cm5lbCBzaXplIGV4dGVuc2lvbiwgYW5kIHNldCBvciB2YWxpZGF0ZSB0aGUKLQkgKiBpbWFnZSBz
aXplLiAgVGhpcyBpcyB0aGUgdG90YWwgc3BhY2UgbmVlZGVkIHRvIGF2b2lkIHRoZQotCSAqIGJv
b3Qga2VybmVsIEJTUywgc28gb3RoZXIgZGF0YSAoc3VjaCBhcyBpbml0cmQpIGRvZXMgbm90IGdl
dAotCSAqIG92ZXJ3cml0dGVuLgotCSAqLwotCXRhZyA9IGZpbmRfZXh0ZW5zaW9uX3RhZyhidWYs
IGxlbiwgWklNQUdFX1RBR19LUk5MX1NJWkUpOwogCWlmICh0YWcpIHsKIAkJdWludDMyX3QgKnAg
PSAodm9pZCAqKWJ1ZiArIGxlMzJfdG9fY3B1KHRhZy0+dS5rcm5sX3NpemUuc2l6ZV9wdHIpOwog
CQl1aW50MzJfdCBlZGF0YV9zaXplID0gbGUzMl90b19jcHUoZ2V0X3VuYWxpZ25lZChwKSk7Ci0t
IAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
